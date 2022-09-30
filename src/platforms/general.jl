# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

# query

abstract type Query end
abstract type Yes <: Query end
abstract type No <: Query end

# maintainer

abstract type Provider end
abstract type OnPremise <: Provider end
abstract type CloudProvider <: Provider end

# machine

abstract type MachineFamily end
abstract type MachineType end
abstract type MachineSize end

# locale

abstract type Locale end

# manufacturer

abstract type Manufacturer end

# processor 

abstract type ProcessorMicroarchitecture end
abstract type ProcessorISA end
abstract type ProcessorSIMD <: ProcessorISA end

abstract type Processor end

# accelerator

abstract type AcceleratorType end
abstract type AcceleratorArchitecture end
abstract type AcceleratorBackend end
abstract type AcceleratorProcessor end
abstract type Accelerator end

abstract type XPU <: AcceleratorType end
abstract type GPU <: XPU end
abstract type TPU <: XPU end
abstract type IPU <: XPU end

abstract type FPGA <: AcceleratorType end

abstract type MIC <: AcceleratorType end

#interconnection
abstract type InterconnectionTopology end
abstract type Interconnection end

# storage

abstract type StorageType end   
abstract type StorageInterface end   

# memory system

abstract type MemoryType end


# cache

abstract type CacheMapping end

function apitype(api, version_number)

    version = isnothing(version_number) ? "API" : string(version_number)

    version =  replace(version, "." => "_")

    dt = AcceleratorBackend

    if (api == :CUDA)        return Tuple{get_qualifier("CUDA_$version"),dt,dt,dt,dt,dt,dt}
    elseif (api == :OpenCL)  return Tuple{dt,get_qualifier("OpenCL_$version"),dt,dt,dt,dt,dt}
    elseif (api == :OpenACC) return Tuple{dt,dt,get_qualifier("OpenACC_$version"),dt,dt,dt,dt}
    elseif (api == :OneAPI)  return Tuple{dt,dt,dt,get_qualifier("OneAPI_$version"),dt,dt,dt}
    elseif (api == :OpenGL)  return Tuple{dt,dt,dt,dt,get_qualifier("OpenGL_$version"),dt,dt}
    elseif (api == :Vulkan)  return Tuple{dt,dt,dt,dt,dt,get_qualifier("Vulkan_$version"),dt}
    elseif (api == :DirectX) return Tuple{dt,dt,dt,dt,dt,dt,get_qualifier("DirectX_$version")}
    else return Tuple{dt,dt,dt,dt,dt,dt}
    end

end

macro api(api, version_number)
    apitype(api,version_number)
end

macro api(api)
    apitype(api,nothing)
end

