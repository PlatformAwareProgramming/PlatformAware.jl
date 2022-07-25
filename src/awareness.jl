# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

using CpuId
using XMLDict
using TOML
using JSON

@sync begin

 Threads.@spawn global processor_dict_intel = include("src/platforms/intel/db-processors.Intel.jl")
 Threads.@spawn global processor_dict_amd = include("src/platforms/amd/db-processors.AMD.jl")
 Threads.@spawn global accelerator_dict_intel = include("src/platforms/intel/db-accelerators.Intel.jl")
 Threads.@spawn global accelerator_dict_amd = include("src/platforms/amd/db-accelerators.AMD.jl")
 Threads.@spawn global accelerator_dict_nvidia = include("src/platforms/nvidia/db-accelerators.NVIDIA.jl")

end

global processor_dict = merge(processor_dict_amd, processor_dict_intel)
global accelerator_dict = merge(accelerator_dict_intel, accelerator_dict_amd, accelerator_dict_nvidia)


function get_info_dict(idtype)
   command = `sudo lshw -xml -C $idtype`    
   xmlinfo = read(command, String)
   xml_dict(xmlinfo)
end

function identifyComponent(idtype)
   dict = get_info_dict(idtype)

   l = Vector()

   node = dict["list"]["node"]
   if (typeof(node) == Vector{Any})
      for v in enumerate(node)
         #if ("product" in keys(v[2]))
         #   push!(l, v[2]["product"])
         #end
         push!(l,v[2])
      end
   else
      #push!(l,node["product"])
      push!(l,node)
   end
   return l
end


function identifySIMD(capabilities)

   l = Vector()

   # collect the supported SIMD extensions
   for capacity in capabilities
      if (occursin("avx512",capacity))
         push!(l,:AVX512)
      elseif (occursin("avx2",capacity))
         push!(l,:AVX2)        
      elseif (occursin("avx",capacity))
         push!(l,:AVX)
      elseif (occursin("sse4_a",capacity))
         push!(l,:SSE4a)
      elseif (occursin("sse4_1",capacity))
         push!(l,:SSE41)
      elseif (occursin("sse4_2",capacity))
         push!(l,:SSE42)
      elseif (occursin("ssse3",capacity))
         push!(l,:SSSE3)
      elseif (occursin("sse3",capacity))
         push!(l,:SSE3)
      elseif (occursin("sse2",capacity))
         push!(l,:SSE2)
      elseif (occursin("sse",capacity))
         push!(l,:SSE)
      elseif (occursin("mmx",capacity))
         push!(l,:MMX)
      elseif (occursin("3dnowext",capacity))
         push!(l,:Now3Dx)
      elseif (occursin("3dnow",capacity))
         push!(l,:Now3D)
      end
   end

   # take the most advanced one (currently, only one is supported)
   if (in(:AVX512,l))
      return string(:AVX512)
   elseif (in(:AVX2,l))
      return string(:AVX2)        
   elseif (in(:AVX,l))
      return string(:AVX)
   elseif (in(:SSE4a,l))
      return string(:SSE4a)
   elseif (in(:SSE41,l))
      return string(:SSE41)
   elseif (in(:SSE42,l))
      return string(:SSE42)
   elseif (in(:SSSE3,l))
      return string(:SSSE3)
   elseif (in(:SSE3,l))
      return string(:SSE3)
   elseif (in(:SSE2,l))
      return string(:SSE2)
   elseif (in(:SSE,l))
      return string(:SSE)
   elseif (in(:MMX,l))
      return string(:MMX)
   else
      return nothing
   end

end

function identifySIMD_2(exts)
   if (!isnothing(exts))
      if in("AVX-512",exts)
         return string(:AVX512)
      elseif in("AVX2", exts)
         return string(:AVX2)
      elseif in("SSE4.1",exts)
         return string(:SSE41)
      elseif in("SSE4.2",exts)
         return string(:SSE42)
      elseif in("SSSE3",exts)
         return string(:SSSE3)
      elseif in("SSE3",exts)
         return string(:SSE3)
      elseif in("SSE2",exts)
         return string(:SSE2)
      elseif in("SSE", exts)
         return string(:SSE)
      elseif in("MMX", exts)
         return string(:MMX)
      end
   else
      return string(:ProcessorSIMD)
   end
end

function determineLevel(capabilities)

   reduce(&, map(v -> in(v, capabilities), ["avx512f","avx512bw","avx512cd","avx512dq","avx512vl"])) ? 4 : 
   reduce(&, map(v -> in(v, capabilities), ["avx","avx2","bmi1","bmi2","f16c","fma","abm","movbe","xsave"])) ? 3 : 
   reduce(&, map(v -> in(v, capabilities), ["cx16","lahf_lm","popcnt","sse4_1","sse4_2","ssse3"])) ? 2 :
   reduce(&, map(v -> in(v, capabilities), ["lm","cmov","cx8","fpu","fxsr","mmx","syscall","sse2"])) ? 1 :
   0

end

function determineLevel_2()

   reduce(&, CpuId.cpufeature.([:AVX512F,:AVX512BW,:AVX512CD,:AVX512DQ,:AVX512VL])) ? 4 :
   reduce(&, CpuId.cpufeature.([:AVX,:AVX2,:BMI1,:BMI2,:F16C,:FMA3,#=:ABM,=#:MOVBE,:XSAVE])) ? 3 :
   reduce(&, CpuId.cpufeature.([:CX16,#=:LAHF_LM,=#:POPCNT,:SSE41,:SSE42,:SSSE3])) ? 2 :
   reduce(&, CpuId.cpufeature.([:LM,:CMOV,:CX8,:FPU,:FXSR,:MMX,:SYSCALL,:SSE2])) ? 1 :
   0

end

# https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/

function identifyISA(capabilities)
   for capacity in capabilities
      if (occursin("x86-64",capacity))
         level_dict = Dict(0 => string(:ISA_x86_64), 
                           1 => string(:ISA_x86_64_v1), 
                           2 => string(:ISA_x86_64_v2), 
                           3 => string(:ISA_x86_64_v3), 
                           4 => string(:ISA_x86_64_v4))
         level = determineLevel(capabilities)
         return level_dict[level]
      elseif (occursin("x86-32",capacity))
            return string(:ISA_x86_32)           
      elseif (occursin("amd64",capacity))
            return string(:ISA_AMD_64)
      elseif (occursin("ia64",capacity))
            return string(:ISA_IA_64)          
      elseif (occursin("i386",capacity))
            return string(:ISA_x86_32)            
      end
   end
end

function identifyISA_2(isa)
   if (isa == "64-bit")
      level_dict = Dict(0 => string(:ISA_x86_64), 
                        1 => string(:ISA_x86_64_v1), 
                        2 => string(:ISA_x86_64_v2), 
                        3 => string(:ISA_x86_64_v3), 
                        4 => string(:ISA_x86_64_v4))
      level = determineLevel_2()
      return level_dict[level]
   else (isa == "Itanium 64-bit")
      return string(:ISA_IA_64)
   end
end


#=

   fn = open("src/platforms/database/processors/intel_processors_data.txt")
   d = JSON.parse(fn)
   close(fn)

   fn_out = open("intel_processors_info.jl","w")

   for p in d 
      if (haskey(p,"Processor Number"))
         println(fn_out,
                    (haskey(p,"Product Collection") ? get(p,"Product Collection",nothing) : nothing,
                     haskey(p,"Processor Number") ? get(p,"Processor Number",nothing) : nothing,
                     haskey(p,"Total Cores") ? parse(Int64,get(p,"Total Cores",nothing)) : nothing,
                     haskey(p,"Processor Base Frequency") ? get(p,"Processor Base Frequency",nothing) : nothing,
                     haskey(p,"Total Threads") ? parse(Int64,get(p,"Total Threads",nothing)) : nothing,
                     haskey(p,"Instruction Set") ? get(p,"Instruction Set",nothing) : nothing,
                     haskey(p,"Instruction Set Extensions") ? split(replace(get(p,"Instruction Set Extensions",nothing),"Intel®"=>"", " "=>""),',') : nothing,
                     haskey(p,"Product Collection") ? replace(get(p,"Code Name",nothing),"Products formerly" => "", " " => "") : nothing))
      else
       
      end
   end

   close(fn_out)

=#

function identifyProcessorModel(processor_string)

   proc_info = get(processor_dict, processor_string, nothing)
   if (!isnothing(proc_info)) 
      return proc_info
   end

   parts = split(processor_string," ")

   for p in parts        
       proc_info = get(processor_dict, p, nothing)
       if (!isnothing(proc_info)) 
         return proc_info
       end
   end

end

function getCoreClockString(clock_string)
   if (!isnothing(clock_string))
      clock_unit = match(r"GHz|MHz",clock_string)
      clock_unit = isnothing(clock_unit) ? nothing : clock_unit.match
      multiplier = Dict("GHz" => "G", "MHz" => "M", nothing => "")
      result = match(r"^[-+]?[0-9]*\.?[0-9]+",clock_string)
      isnothing(result) ? "unknown" : result.match * multiplier[clock_unit]
   else
      "unknown"
   end
end

function identifySIMD_CpuId()
      if CpuId.cpufeature(:AVX512F)
         return string(:AVX512)
      elseif CpuId.cpufeature(:AVX2)
         return string(:AVX2)
      elseif CpuId.cpufeature(:SSE41)
         return string(:SSE41)
      elseif CpuId.cpufeature(:SSE42)
         return string(:SSE42)
      elseif CpuId.cpufeature(:SSSE3)
         return string(:SSSE3)
      elseif CpuId.cpufeature(:SSE3)
         return string(:SSE3)
      elseif CpuId.cpufeature(:SSE2)
         return string(:SSE2)
      elseif CpuId.cpufeature(:SSE)
         return string(:SSE)
      elseif CpuId.cpufeature(:MMX)
         return string(:MMX)
      else
         return string(:ProcessorSIMD)
   end
end



# using CpuId
function collectProcessorFeatures_CpuId()

   processor_features = Dict{String,Any}()

   processor_features["processor_count"] = CpuId.cpunodes()
   processor_features["processor_core_count"] = CpuId.cpucores()
   processor_features["processor_core_threads_count"] = CpuId.cputhreads()
   processor_features["processor_core_clock"] = CpuId.cpu_base_frequency()
   processor_features["processor_simd"] = identifySIMD_CpuId() 
   processor_features["processor_isa"] = nothing
   cache_config = CpuId.cachesize()
   processor_features["processor_core_L1_size"] = cache_config[1] 
   processor_features["processor_core_L2_size"] = cache_config[2]
   processor_features["processor_L3_size"] = cache_config[3]
   processor_features["processor_manufacturer"] = string(CpuId.cpuvendor())
   processor_features["processor_microarchitecture"] = nothing # string(CpuId.cpuarchitecture())

   cpu_brand = CpuId.cpubrand()
   cpu_brand = replace(cpu_brand,"(tm)" => "","(TM)" => "", "(r)" => "", "(R)" => "")

   proc_info = identifyProcessorModel(cpu_brand)   
   if (!isnothing(proc_info))
      processor_features["processor_manufacturer"] = isnothing(processor_features["processor_manufacturer"]) ? proc_info[9] : processor_features["processor_manufacturer"]
      processor_features["processor_core_clock"] = isnothing(processor_features["processor_core_clock"]) ? getCoreClockString(proc_info[2]) : processor_features["processor_core_clock"]
      processor_features["processor_core_count"] = isnothing(processor_features["processor_core_count"]) ? proc_info[1] : processor_features["processor_core_count"] 
      processor_features["processor_core_threads_count"] = isnothing(processor_features["processor_core_threads_count"]) ? proc_info[3] : processor_features["processor_core_count"]
      processor_features["processor_simd"] = isnothing(processor_features["processor_simd"]) ? identifySIMD_2(proc_info[5]) : processor_features["processor_simd"] 
      processor_features["processor_isa"] = isnothing(processor_features["processor_isa"]) ? identifyISA_2(proc_info[4]) : processor_features["processor_isa"]
      processor_features["processor_microarchitecture"] = proc_info[6]
      processor_features["processor_tdp"] = !isnothing(proc_info[8]) ? parse(Int64,match(r"[1-9]*",proc_info[10]).match) : nothing
      processor_features["processor"] = proc_info[8]
   end

   return processor_features

end


# https://unix.stackexchange.com/questions/43539/what-do-the-flags-in-proc-cpuinfo-mean
# https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/x86/include/asm/cpufeatures.h

function collectProcessorFeatures(l)
   
   processor_features_list = Dict{String,Any}()

   i=1
   for processor_info in l  # take the first processor in the list, by supposing homogeneity.

      processor_features = Dict{String,Any}()

      get!(processor_features_list, string(i), processor_features)

      processor_features["processor_count"] = 1
      processor_features["processor_core_count"] = processor_info[2]
      processor_features["processor_core_threads_count"] = processor_info[3]
      processor_features["processor_core_clock"] = nothing
      processor_features["processor_simd"] = identifySIMD(processor_info[4]) 
      processor_features["processor_isa"] = identifyISA(processor_info[4])
      processor_features["processor_core_L1_size"] = "unset" #TODO
      processor_features["processor_core_L2_size"] = "unset" #TODO
      processor_features["processor_L3_size"] = "unset" #TODO
      
      # looking at the database
      proc_info = identifyProcessorModel(processor_info[1])   
      if (!isnothing(proc_info))
         processor_features["processor_manufacturer"] = proc_info[10]
         processor_features["processor_core_clock"] = isnothing(processor_features["processor_core_clock"]) ? getCoreClockString(proc_info[3]) : processor_features["processor_core_clock"]
         processor_features["processor_core_count"] = isnothing(processor_features["processor_core_count"]) ? proc_info[2] : processor_features["processor_core_count"] 
         processor_features["processor_core_threads_count"] = isnothing(processor_features["processor_core_threads_count"]) ? proc_info[4] : processor_features["processor_core_count"]
         processor_features["processor_simd"] = isnothing(processor_features["processor_simd"]) ? identifySIMD_2(proc_info[6]) : processor_features["processor_simd"] 
         processor_features["processor_isa"] = isnothing(processor_features["processor_isa"]) ? identifyISA_2(proc_info[5]) : processor_features["processor_isa"]
         processor_features["processor_microarchitecture"] = proc_info[7]
         processor_features["processor_tdp"] = !isnothing(proc_info[9]) ? parse(Int64,match(r"[1-9]*",proc_info[11]).match) : nothing
         processor_features["processor"] = proc_info[9]
      end

      i = i + 1
   end

   return length(processor_features_list) > 1 ? processor_features_list : processor_features_list["1"]
end


# using CpuId (safe)

function identifyProcessor()

   collectProcessorFeatures_CpuId() 

#=
   l = Vector()
   for p in identifyComponent("processor")  # using lshw
      lc = Vector()
      for c in p["capabilities"]["capability"]
         push!(lc,c[:id])
      end
      cdict = Dict()
      for c in values(p["configuration"]["setting"])
         get!(cdict,c[:id],c[:value])
      end
      processor_core_count = parse(Int64,cdict["enabledcores"])
      processor_core_threadscount = parse(Int64,cdict["threads"])

      push!(l,(p["product"],processor_core_count, processor_core_threadscount,lc))
       
   end

  
   collectProcessorFeatures(l)
=#

end

function identifyAcceleratorModel(cpu_brand)

   cpu_brand = replace(cpu_brand,"[" => "", "]" => "", "(" => "", ")" => "" )
   parts = split(cpu_brand," ")

   for p in parts        
       acc_info = get(accelerator_dict, p, nothing)
       if (!isnothing(acc_info)) 
         return acc_info
       end
   end

end

function collectAcceleratorFeatures(l)

   accelerator_features = Dict()

   # Return the first display device that is an accelerator.
   # This is valid only for GPUs.
   i = 1
   for acc_brand in l 
      
      # looking at the database
      acc_info = identifyAcceleratorModel(acc_brand)   
      if (isnothing(acc_info))
         continue
      end

      device = Dict()
      accelerator_features[string(i)] = device

      accelerator = nothing
      accelerator_count = 1
      accelerator_type = nothing
      accelerator_manufacturer = nothing
      accelerator_api = nothing
      accelerator_architecture = nothing
      accelerator_memorysize = nothing
      accelerator_tdp = nothing

      device["accelerator_count"] = accelerator_count
      device["accelerator"] = isnothing(accelerator) ? acc_info[1] : accelerator
      device["accelerator_type"] = isnothing(accelerator_type) ? acc_info[2] : accelerator_type
      device["accelerator_manufacturer"] = isnothing(accelerator_manufacturer) ? acc_info[3] : accelerator_manufacturer
      device["accelerator_api"] = isnothing(accelerator_api) ? acc_info[4] : accelerator : accelerator_api
      device["accelerator_architecture"] = isnothing(accelerator_architecture)  ? acc_info[5] : accelerator_architecture
      device["accelerator_memorysize"] = isnothing(accelerator_memorysize) ? acc_info[6] : accelerator_memorysize
      device["accelerator_tdp"] = isnothing(accelerator_tdp) ? acc_info[7] : accelerator_tdp

       i = i + 1
   end

   return i == 2 ? accelerator_features["1"] : accelerator_features
end

function identifyAccelerator()
   l = Vector()
   for d in identifyComponent("display")
      push!(l,d["product"])
   end

   collectAcceleratorFeatures(l)
end

#=
function identifyMemoryBank!(l,node)

   size = 0

   if ("node" in keys(node[2]))
      if (typeof(node[2]["node"]) == Vector{Any})
         for v2 in enumerate(node[2]["node"])
            if ("description" in keys(v2[2]))
               size = parse(Int64,v2[2]["size"][""])
               push!(l, (v2[2]["description"],size))
            end
         end
      else
         if ("description" in keys(node[2]["node"]))
            size = parse(Int64,node[2]["node"]["size"][""])
            push!(l, (node[2]["node"]["description"],size))
         end
      end
   end
end
=#

function getMemorySize(mem_size)
   if (!isnothing(mem_size))
      size_unit = match(r"KB|MB|GB|TB",mem_size) 
      size_unit = isnothing(size_unit) ? nothing : size_unit.match
      multiplier = Dict("KB" => 2^10, "MB" => 2^20, "GB" => 2^30, "TB" => 2^40, nothing => 1)
      parse(Int64,match(r"^[-+]?[0-9]*\.?[0-9]+",mem_size).match) * multiplier[size_unit]
   else
      nothing
   end
end

function getMemorySpeed(mem_speed)
   if (!isnothing(mem_speed))
      speed_unit = match(r"MT/s|GT/s|MHz|GHz",mem_speed)
      speed_unit = isnothing(speed_unit) ? nothing : speed_unit.match
      multiplier = Dict("MT/s" => 1, "GT/s" => 2^10, "MHz" => 1, "GHz" => 2^10, nothing => 1)
      parse(Int64,match(r"^[-+]?[0-9]*\.?[0-9]+",mem_speed).match) * multiplier[speed_unit]
   else
      nothing
   end
end

# using dmidecode 
function collectMemoryFeatures(dict_list)
   
   # dict_list is a dictionary with the memory banks returned by "dmidecode".
   # It is assumed that all banks have the same characteristics.
   # the total memory size is the sum of the size of memory banks.

   memory_features = Dict()

   memory_features["node_memory_size"] = 0

   for (k,dict) in dict_list
      node_memory_type = dict["Type"]
      node_memory_frequency = dict["Speed"]
      node_memory_size =  memory_features["node_memory_size"] + getMemorySize(dict["Size"])
      node_memory_bandwidth = !haskey(dict,"Configured Memory Speed") || dict["Configured Memory Speed"] == "Unknown" ? "unknown" : dict["Configured Memory Speed"]

      memory_features["node_memory_type"] = node_memory_type
      memory_features["node_memory_frequency"] = getMemorySpeed(node_memory_frequency)
      memory_features["node_memory_size"] = node_memory_size
      memory_features["node_memory_latency"] = "unset"
      memory_features["node_memory_bandwidth"] = getMemorySpeed(node_memory_bandwidth)
   end

   return memory_features
end

# using dmidecode (unsafe ! text output)
function identifyMemory()

   command = `sudo dmidecode -t memory`

   l = split(replace(read(command, String),"\t"=>""),'\n')

   d1 = Dict()
   i=0
   j=0
   for s in l
      if s == "Memory Device"
         i = i + 1; j = j + 1
         d1[j] = Dict()
      else
         if (i>0 && in(':',s))
            ss = split(s,':')
            d1[j][strip(ss[1])] = strip(ss[2])
         elseif (i>0 && !in(':',s))
            i=0
         end
      end
   end

   collectMemoryFeatures(d1)

   #=dict = get_info_dict("memory")

   l = Vector()

   node = dict["list"]["node"]
   if (typeof(node) == Vector{Any})
      for v1 in enumerate(node)
         identifyMemoryBank!(l,v1)
      end
   else
      identifyMemoryBank!(l,node)
   end
   return l
   =#
end


# using lsblk (safe - JSON output)
function identifyStorage()

   command = `lsblk --scsi --json -d --bytes -o rota,size,tran`
   dict = JSON.parse(read(command, String))      

   storage_features = Dict()

   for device in dict["blockdevices"]
 
      storage_type = device["rota"] ? "HDD" : "SSD"
      storage_interface = uppercase(device["tran"])
      storage_size = device["size"]
      storage_latency = "unset"  
      storage_bandwidth = "unset"
      storage_networkbandwidth = "unset"
      
      storage_features["storage_type"] = storage_type
      storage_features["storage_interface"] = storage_interface
      storage_features["storage_size"] = storage_size
      storage_features["storage_latency"] = storage_latency
      storage_features["storage_bandwidth"] = storage_bandwidth
      storage_features["storage_networkbandwidth"] = storage_networkbandwidth
   end

   return storage_features

end

function identityInterconnection()
end

function addProcessorFeatures!(platform_features, processor_features)
   platform_features["processor"] = processor_features
end

function addAcceleratorFeatures!(platform_features, accelerator_features)
   platform_features["accelerator"] = accelerator_features
end
   
function addMemoryFeatures!(platform_features, memory_features)
   platform_features["memory"] = memory_features
end

function addStorageFeatures!(platform_features, storage_features)
   platform_features["storage"] = storage_features
end

function addInterconnectionFeatures!(platform_features, interconnection_features)
   #get!(platform_features, "interconnection", interconnection_features)
end


function identify_platform()

   print(stderr, "indentifying processor... "); processor_features = identifyProcessor(); println(stderr, "ok")
   print(stderr, "indentifying accelerator... "); accelerator_features = identifyAccelerator(); println(stderr, "ok")
   print(stderr, "indentifying memory... "); memory_features = identifyMemory(); println(stderr, "ok")
   print(stderr, "indentifying storage... "); storage_features = identifyStorage(); println(stderr, "ok")
   print(stderr, "indentifying interconnection... "); interconnection_features = identityInterconnection(); println(stderr, "ok")

   platform_features = Dict()

   addProcessorFeatures!(platform_features, processor_features)
   addAcceleratorFeatures!(platform_features, accelerator_features)
   addMemoryFeatures!(platform_features, memory_features)
   addStorageFeatures!(platform_features, storage_features)
   addInterconnectionFeatures!(platform_features, interconnection_features)

   return platform_features

end

 
info = identify_platform()

println(stderr)

TOML.print(stdout, info)
