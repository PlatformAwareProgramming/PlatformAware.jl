# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

#using CpuId

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
         if ("product" in keys(v[2]))
            push!(l, v[2]["product"])
         end
      end
   else
      push!(l,node["product"])
   end
   return l
end

function identifyProcessor()

   #identifyComponent("processor")  # using lshw

   #cpubrand()                      # using CpuId

   # using Sys
   info = Sys.cpu_info()   
   map(x-> x.model, info)
end

function identifyAccelerator()
   identifyComponent("display")
end

function identifyMemoryBank!(l,node)
   if ("node" in keys(node[2]))
      if (typeof(node[2]["node"]) == Vector{Any})
         for v2 in enumerate(node[2]["node"])
            if ("description" in keys(v2[2]))
               push!(l, (v2[2]["description"],v2[2]["size"]))
            end
         end
      else
         if ("description" in keys(node[2]["node"]))
            push!(l, (node[2]["node"]["description"],v2[2]["size"]))
         end
      end
   end
end


function identifyMemory()
   dict = get_info_dict("memory")

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
end

function identifyStorage()
   dict = get_info_dict("disk")

   l = Vector()

   node = dict["list"]["node"]
   if (typeof(node) == Vector{Any})
      for v in enumerate(node)
         if ("product" in keys(v[2]))
            push!(l, (v[2]["product"], v[2]["size"]))
         end
      end
   else
      push!(l,(node["product"],node["size"]))
   end
   return l
end

#function identityInterconnection()
#end

function addProcessorFeatures!(platform_features, processor_ids)
   for i in processor_ids println(i) end
end

function addAcceleratorFeatures!(platform_features, accelerator_ids)
   for i in accelerator_ids println(i) end
end
   
function addMemoryFeatures!(platform_features, memory_ids)
   for i in memory_ids println(i) end
end

function addStorageFeatures!(platform_features, storage_ids)
   for i in storage_ids println(i) end
end

#function addInterconnectionFeatures!(platform_features, interconnection_id)
#end

function buildPlatformDescription(platform_features)
end

function identify_platform()

   processor_id = identifyProcessor()
   accelerator_id = identifyAccelerator()
   memory_id = identifyMemory()
   storage_id = identifyStorage()
#   interconnection_id = identityInterconnection()

   platform_features = Dict()

   addProcessorFeatures!(platform_features, processor_id)
   addAcceleratorFeatures!(platform_features, accelerator_id)
   addMemoryFeatures!(platform_features, memory_id)
   addStorageFeatures!(platform_features, storage_id)
#   addInterconnectionFeatures!(platform_features, interconnection_id)

   platform_description = buildPlatformDescription(platform_features)

   return platform_description

end



identify_platform()