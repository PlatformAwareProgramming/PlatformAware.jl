# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

 

const processor_dict = Ref{Vector}()
const accelerator_dict = Ref{Vector}()

function loadDBs!() 

   database_path = @get_scratch!("database_path")

   procdb_intel_url = "https://raw.githubusercontent.com/PlatformAwareProgramming/PlatformAware.jl/master/src/features/qualifiers/intel/db-processors.Intel.csv"
   procdb_amd_url   = "https://raw.githubusercontent.com/PlatformAwareProgramming/PlatformAware.jl/master/src/features/qualifiers/amd/db-processors.AMD.csv"
   procdb_aws_url   = "https://raw.githubusercontent.com/PlatformAwareProgramming/PlatformAware.jl/master/src/features/qualifiers/aws/db-processors.AWS.csv"
   accdb_intel_url  = "https://raw.githubusercontent.com/PlatformAwareProgramming/PlatformAware.jl/master/src/features/qualifiers/intel/db-accelerators.Intel.csv"
   accdb_amd_url    = "https://raw.githubusercontent.com/PlatformAwareProgramming/PlatformAware.jl/master/src/features/qualifiers/amd/db-accelerators.AMD.csv"
   accdb_nvidia_url = "https://raw.githubusercontent.com/PlatformAwareProgramming/PlatformAware.jl/master/src/features/qualifiers/nvidia/db-accelerators.NVIDIA.csv"

#   procdb_intel_fname = "/home/heron/Dropbox/Copy/ufc_mdcc_hpc/PlatformAware/PlatformAware.jl/src/features/qualifiers/intel/db-processors.Intel.csv" #joinpath(database_path,basename(procdb_intel_url))
#   procdb_amd_fname = "/home/heron/Dropbox/Copy/ufc_mdcc_hpc/PlatformAware/PlatformAware.jl/src/features/qualifiers/amd/db-processors.AMD.csv" #joinpath(database_path,basename(procdb_amd_url))
#   accdb_intel_fname = "/home/heron/Dropbox/Copy/ufc_mdcc_hpc/PlatformAware/PlatformAware.jl/src/features/qualifiers/intel/db-accelerators.Intel.csv" #joinpath(database_path,basename(accdb_intel_url))
#   accdb_amd_fname = "/home/heron/Dropbox/Copy/ufc_mdcc_hpc/PlatformAware/PlatformAware.jl/src/features/qualifiers/amd/db-accelerators.AMD.csv" #joinpath(database_path,basename(accdb_amd_url))
#   accdb_nvidia_fname = "/home/heron/Dropbox/Copy/ufc_mdcc_hpc/PlatformAware/PlatformAware.jl/src/features/qualifiers/nvidia/db-accelerators.NVIDIA.csv" #joinpath(database_path,basename(accdb_nvidia_url))

   procdb_intel_fname =  joinpath(database_path,basename(procdb_intel_url))
   procdb_amd_fname = joinpath(database_path,basename(procdb_amd_url))
   procdb_aws_fname = joinpath(database_path,basename(procdb_aws_url))
   accdb_intel_fname = joinpath(database_path,basename(accdb_intel_url))
   accdb_amd_fname = joinpath(database_path,basename(accdb_amd_url))
   accdb_nvidia_fname = joinpath(database_path,basename(accdb_nvidia_url))

   try_download(procdb_intel_url, procdb_intel_fname)
   try_download(procdb_amd_url, procdb_amd_fname)
   try_download(procdb_aws_url, procdb_aws_fname)
   try_download(accdb_intel_url, accdb_intel_fname)
   try_download(accdb_amd_url, accdb_amd_fname)
   try_download(accdb_nvidia_url, accdb_nvidia_fname)

   processor_dict_intel = readDB(procdb_intel_fname)
   processor_dict_amd = readDB(procdb_amd_fname)
   processor_dict_aws = readDB(procdb_aws_fname)
   accelerator_dict_intel = readDB(accdb_intel_fname)
   accelerator_dict_amd = readDB(accdb_amd_fname)
   accelerator_dict_nvidia = readDB(accdb_nvidia_fname)

   global processor_dict[] = vcat(processor_dict_amd, processor_dict_aws, processor_dict_intel)
   global accelerator_dict[] = vcat(accelerator_dict_intel, accelerator_dict_amd, accelerator_dict_nvidia)

end

function get_info_dict(idtype)
   command = `sudo lshw -xml -quiet -C $idtype`    
   xmlinfo = read(command, String)
   xml_dict(xmlinfo)
end

function identifyComponent(idtype)
   dict = get_info_dict(idtype)

   l = Vector()

   node = dict["list"]["node"]
   if (typeof(node) == Vector{Any})
      for v in enumerate(node)
         push!(l,v[2])
      end
   else
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

   exts = split(exts,';')

   if (!isnothing(exts))
      if in("AVX-512",exts)
         return string(:AVX512)
      elseif in("AVX2", exts)
         return string(:AVX2)
      elseif in("SSE4.1",exts)
         return string(:SSE_4_1)
      elseif in("SSE4.2",exts)
         return string(:SSE_4_2)
      elseif in("SSSE3",exts)
         return string(:SSSE_3)
      elseif in("SSE3",exts)
         return string(:SSE_3)
      elseif in("SSE2",exts)
         return string(:SSE_2)
      elseif in("SSE", exts)
         return string(:SSE)
      elseif in("MMX", exts)
         return string(:MMX)
      else exts == "nothing"
         return string(:ProcessorSIMD)
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

   fn = open("src/features/qualifiers/database/processors/intel_processors_data.txt")
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
   lookupDB(processor_dict[], processor_string)
end

function identifyAcceleratorModel(accelerator_string)
   lookupDB(accelerator_dict[], accelerator_string)
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
         return "SSE_4_1"
      elseif CpuId.cpufeature(:SSE42)
         return "SSE_4_2"
      elseif CpuId.cpufeature(:SSSE3)
         return "SSSE_3"
      elseif CpuId.cpufeature(:SSE3)
         return "SSE_3"
      elseif CpuId.cpufeature(:SSE2)
         return "SSE_2"
      elseif CpuId.cpufeature(:SSE)
         return "SSE"
      elseif CpuId.cpufeature(:MMX)
         return "MMX"
      else
         return "ProcessorSIMD"
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
   cache_config = CpuId.cachesize()
   processor_features["processor_core_L1_size"] = cache_config[1] 
   processor_features["processor_core_L2_size"] = cache_config[2]
   processor_features["processor_L3_size"] = cache_config[3]
   processor_features["processor_manufacturer"] = string(CpuId.cpuvendor())

   cpu_brand = string(CpuId.cpuvendor()) * " " * CpuId.cpubrand()
   cpu_brand = replace(cpu_brand,"(tm)" => "","(TM)" => "", "(r)" => "", "(R)" => "")

   proc_info = identifyProcessorModel(cpu_brand)   
   if (!isnothing(proc_info))
      processor_features["processor_manufacturer"] = isnothing(processor_features["processor_manufacturer"]) ? proc_info[9] : processor_features["processor_manufacturer"]
      processor_features["processor_core_clock"] = isnothing(processor_features["processor_core_clock"]) ? getCoreClockString(proc_info[3]) : processor_features["processor_core_clock"]
      processor_features["processor_core_count"] = isnothing(processor_features["processor_core_count"]) ? parse(Int64,proc_info[2]) : processor_features["processor_core_count"] 
      processor_features["processor_core_threads_count"] = isnothing(processor_features["processor_core_threads_count"]) ? parse(Int64,proc_info[4]) : processor_features["processor_core_count"]
      processor_features["processor_simd"] = isnothing(processor_features["processor_simd"]) ? identifySIMD_2(proc_info[6]) : processor_features["processor_simd"] 
      processor_features["processor_isa"] = identifyISA_2(proc_info[5]) 
      processor_features["processor_microarchitecture"] = proc_info[7]
      tdp = tryparse(Int64, proc_info[10])
      processor_features["processor_tdp"] = isnothing(tdp) ? proc_info[11] : parse(Int64,proc_info[10])
      processor_features["processor"] = proc_info[8]
   end

   return processor_features

end


# https://unix.stackexchange.com/questions/43539/what-do-the-flags-in-proc-cpuinfo-mean
# https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/x86/include/asm/cpufeatures.h

#=function collectProcessorFeatures(l)
   
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
=#

function collectProcessorFeaturesDefault()

   processor_features = Dict()

   processor_features["processor_count"] = 1
   processor_features["processor_core_count"] = 1
   processor_features["processor_core_threads_count"] = 1
   processor_features["processor_core_clock"] = "unset"
   processor_features["processor_simd"] = "unset"
   processor_features["processor_core_L1_size"] = "unset"
   processor_features["processor_core_L2_size"] = "unset"
   processor_features["processor_L3_size"] = "unset"
   processor_features["processor_manufacturer"] = "unset"
   processor_features["processor_tdp"] = "unset"
   processor_features["processor"] = "unset"

   return processor_features

end

# using CpuId (safe)

function identifyProcessor()
   try      
      processor_features = collectProcessorFeatures_CpuId() 

      @info "Main processor detection succesful."
      
      return processor_features
   catch 
      @warn "Main processor detection failed."
      @info "Detection of main processors failed. Using default features. You can setup manually."
      return collectProcessorFeaturesDefault()
   end

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
      processor_core_threads_count = parse(Int64,cdict["threads"])

      push!(l,(p["product"],processor_core_count, processor_core_threads_count,lc))
       
   end

  
   collectProcessorFeatures(l)
=#

end




function collectAcceleratorFeatures(l)

   accelerator_features = Dict()

   # Return the first display device that is an accelerator.
   # This is valid only for GPUs.
   i = 1
   for acc_brand in keys(l) 
      
      # looking at the database
      acc_info = identifyAcceleratorModel(replace(acc_brand,"[" => "", "]" => "", "(" => "", ")" => "" ))   
      if (isnothing(acc_info))
         continue
      end

      device = Dict()
      accelerator_features[string(i)] = device

      device["accelerator_count"] = l[acc_brand]
      device["accelerator"] = acc_info[2]
      device["accelerator_type"] = acc_info[3]
      device["accelerator_manufacturer"] = acc_info[4]
      device["accelerator_api"] = acc_info[5]
      device["accelerator_architecture"] = acc_info[6]
      device["accelerator_memory_size"] = acc_info[7]
      device["accelerator_tdp"] = acc_info[8]
      device["accelerator_processor_count"] = length(acc_info) > 8 ? acc_info[9] : "unset"
      device["accelerator_processor"] = length(acc_info) > 9 ? acc_info[10] : "unset"
      device["accelerator_memory_type"] = length(acc_info) > 10 ? acc_info[11] : "unset"

       i = i + 1
   end

   return i > 1 ? accelerator_features["1"] : accelerator_features
end

function collectAcceleratorFeaturesDefault()

      default_features = Dict()

      default_features["accelerator_count"] = 0
      default_features["accelerator"] = "unset"
      default_features["accelerator_type"] = "unset"
      default_features["accelerator_manufacturer"] = "unset"
      default_features["accelerator_interconnect"] = "unset"
      default_features["accelerator_api"] = "unset"
      default_features["accelerator_architecture"] = "unset"
      default_features["accelerator_memory_size"] = "unset"
      default_features["accelerator_tdp"] = "unset"
      default_features["accelerator_processor"] = "unset"
      default_features["accelerator_processor_count"] = "unset"
      default_features["accelerator_memory_type"] = "unset"

    return default_features
end

function identifyAccelerator()
   try
      
      l = Dict()
      for d in identifyComponent("display")
         k = "$(d["vendor"]) $(d["product"])"
         l[k] = haskey(l,k) ? l[k] + 1 : 1
      end

      accelerator_features = if (!isempty(l))
                                 collectAcceleratorFeatures(l)
                             else
                                 collectAcceleratorFeaturesDefault()
                             end

      @info "Accelerator detection successful"

      return accelerator_features
   catch 
      @warn "Accelerator detection failed."
      @info "Detection of accelerators failed. Using default features. You can setup manually."
      return collectAcceleratorFeaturesDefault()
   end
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
   try
      size_unit = match(r"KB|MB|GB|TB",mem_size) 
      size_unit = isnothing(size_unit) ? nothing : size_unit.match
      multiplier = Dict("KB" => 2^10, "MB" => 2^20, "GB" => 2^30, "TB" => 2^40, nothing => 1)
      return parse(Int64,match(r"^[-+]?[0-9]*\.?[0-9]+",mem_size).match) * multiplier[size_unit]
   catch error
      @warn string(error)
      return "unknown"
   end
   
end

function getMemorySpeed(mem_speed)
   try
      speed_unit = match(r"MT/s|GT/s|MHz|GHz",mem_speed)
      speed_unit = isnothing(speed_unit) ? nothing : speed_unit.match
      multiplier = Dict("MT/s" => 1, "GT/s" => 2^10, "MHz" => 1, "GHz" => 2^10, nothing => 1)
      return parse(Int64,match(r"^[-+]?[0-9]*\.?[0-9]+",mem_speed).match) * multiplier[speed_unit]
   catch error
      @warn string(error)
      return "unknown"
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
      memory_features["node_memory_type"] = !haskey(dict,"Type") || dict["Type"] == "Unknown" ? "unknown" : dict["Type"]
      memory_features["node_memory_frequency"] = !haskey(dict,"Speed") || dict["Speed"] == "Unknown" ? "unknown" : getMemorySpeed(dict["Speed"])
      memory_features["node_memory_size"] = !haskey(dict,"Size") || dict["Size"] == "Unknown" ? "unknown" : memory_features["node_memory_size"] + getMemorySize(dict["Size"])
      memory_features["node_memory_latency"] = "unset"
      memory_features["node_memory_bandwidth"] =  !haskey(dict,"Configured Memory Speed") || dict["Configured Memory Speed"] == "Unknown" ? "unknown" : getMemorySpeed(dict["Configured Memory Speed"])
   end

   return memory_features
end

function collectMemoryFeaturesDefault()
   
   memory_features = Dict()

   memory_features["node_memory_size"] = 0
   memory_features["node_memory_type"] = "unknown"
   memory_features["node_memory_frequency"] = "unknown"
   memory_features["node_memory_size"] = "unknown"
   memory_features["node_memory_latency"] = "unknown"
   memory_features["node_memory_bandwidth"] =  "unknown"

   return memory_features
end

# using dmidecode (unsafe ! text output)
function identifyMemory()
   try
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
      
      memory_features = collectMemoryFeatures(d1)
      
      @info "Memory detection successfull."

      return memory_features

   catch 
      @warn "Memory detection failed."
      @info "Detection of memory features failed. Using default features. You can setup manually."

      return collectMemoryFeaturesDefault()
   end

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
   
   storage_features = Dict()

   try
      command = `lsblk --json -d --bytes -o rota,size,tran,type`
      dict = JSON.parse(read(command, String))      

      i = 1
      for device in dict["blockdevices"]
         if (device["type"] == "disk")
            storage_device = Dict()
            storage_features[string(i)] = storage_device

            storage_type = device["rota"] ? "StorageType_HDD" : "StorageType_SSD"; 
            storage_interface = isnothing(device["tran"]) ? "unknown" : uppercase(device["tran"])
            storage_size = device["size"]
            storage_latency = "unset"  
            storage_bandwidth = "unset"
            storage_networkbandwidth = "unset"
            
            storage_device["storage_type"] = storage_type
            storage_device["storage_interface"] = storage_interface
            storage_device["storage_size"] = storage_size
            storage_device["storage_latency"] = storage_latency
            storage_device["storage_bandwidth"] = storage_bandwidth
            storage_device["storage_networkbandwidth"] = storage_networkbandwidth
            i = i + 1
         end
      end

      @info "Storage detection successfull."

   catch 
      @warn "Storage detection failed."
      @info "Detection of storage features failed. Using default features. You can setup manually."

      # default
      storage_features["storage_type"] = "unset"
      storage_features["storage_interface"] = "unset"
      storage_features["storage_size"] = "unset"
      storage_features["storage_latency"] = "unset"
      storage_features["storage_bandwidth"] = "unset"
      storage_features["storage_networkbandwidth"] = "unset"
   end

   return length(storage_features) > 1 ? storage_features : storage_features["1"]
end

# TODO
function identityInterconnection()

   @warn "Interconnection detection failed"
   @info "Detection of interconnection features (for cluster computing) not yet implemented. Using default features."
   @info "You can setup interconnection features manually."

   interconnection_features = Dict()

   interconnection_features["interconnection_startuptime"] = "unset"
   interconnection_features["interconnection_latency"] = "unset"
   interconnection_features["interconnection_bandwidth"] = "unset"
   interconnection_features["interconnection_topology"] = "unset"
   interconnection_features["interconnection_RDMA"] = "unset"
   interconnection_features["interconnection"] = "unset"

   return interconnection_features
end

function identifyNode()

   node_features = Dict()

   node_features["node_count"] = 1
   node_features["node_threads_count"] = 1
   node_features["node_provider"] = "OnPremises"
   node_features["node_virtual"] = "No"
   node_features["node_dedicated"] = "No"
   node_features["node_machinefamily"] = "unset"
   node_features["node_machinetype"] = "unset"
   node_features["node_vcpus_count"] = "unset"
   
   for p in subtypes(CloudProvider)
      @info "Checking $(string(p)) provider."
      ok = getNodeFeatures(p, node_features)
      if (isnothing(ok)) 
         @info "$(string(p)) provider failed"
      else 
         @info "$(string(p)) provider succesful"
      end; 
   end
   @info "Node identification complete."
   return node_features
end

function addNodeFeatures!(platform_features, node_features)
   platform_features["node"] = node_features
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
   platform_features["interconnection"] = interconnection_features
end


function setup()

   platform_features = Dict()

   node_features = nothing

   @sync begin
      @async begin @info "Started node identification."; node_features = identifyNode() end
      @async begin
         @info "Started processor detection."; processor_features = identifyProcessor(); 
         @info "Started accelerator detection."; accelerator_features = identifyAccelerator()
         @info "Started memory system detection."; memory_features = identifyMemory()
         @info "Started storage detection."; storage_features = identifyStorage()
         @info "Started interconnection detection."; interconnection_features = identityInterconnection()

         addProcessorFeatures!(platform_features, processor_features)
         addAcceleratorFeatures!(platform_features, accelerator_features)
         addMemoryFeatures!(platform_features, memory_features)
         addStorageFeatures!(platform_features, storage_features)
         addInterconnectionFeatures!(platform_features, interconnection_features)
      end
   end
   
   addNodeFeatures!(platform_features, node_features)

   if (!isfile("Platform.toml"))
      @sync begin
         Threads.@spawn begin 
                               fn = open("Platform.toml","w")
                               TOML.print(fn, platform_features)
                               close(fn)
                          end 
            end
      @info "The platform description file (Platform.toml) was created in the current folder."
      @info "You can move it to your preferred target."
      @info "Platform.toml will be searched in the following locations:"
      @info "  1) A file path pointed by a PLATFORM_DESCRIPTION environment variable;"
      @info "  2) The current directory;"
      @info "  3) The /etc directory."
   else
      TOML.print(stdout, platform_features)
      @info "A platform description file (Platform.toml) already exists in the current folder. It will not be removed or overwritten." 
      @info "You can see above the Platform.toml content calculated by the feature detection processing."
   end
   
end

 
