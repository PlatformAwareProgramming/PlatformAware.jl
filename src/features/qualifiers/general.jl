# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------


# query

abstract type Query <: QualifierFeature end
abstract type Yes <: Query end
abstract type No <: Query end

# maintainer

abstract type Provider <: QualifierFeature end
abstract type OnPremises <: Provider end
abstract type CloudProvider <: Provider end

# machine

abstract type MachineFamily <: QualifierFeature end
abstract type MachineType <: QualifierFeature end

# locale

abstract type Locale <: QualifierFeature end

# manufacturer

abstract type Manufacturer <: QualifierFeature end

# processor 

abstract type ProcessorMicroarchitecture <: QualifierFeature end
abstract type ProcessorISA <: QualifierFeature end
abstract type ProcessorSIMD <: ProcessorISA end

abstract type Processor end

# accelerator

abstract type AcceleratorType <: QualifierFeature end
abstract type AcceleratorArchitecture <: QualifierFeature end
abstract type AcceleratorBackend <: QualifierFeature end
abstract type AcceleratorProcessor <: QualifierFeature end
abstract type Accelerator <: QualifierFeature end

abstract type XPU <: AcceleratorType end
abstract type GPU <: XPU end
abstract type TPU <: XPU end
abstract type IPU <: XPU end

abstract type FPGA <: AcceleratorType end

abstract type MIC <: AcceleratorType end

#interconnection
abstract type InterconnectionTopology <: QualifierFeature end
abstract type Interconnection <: QualifierFeature end

# storage

abstract type StorageType <: QualifierFeature end   
abstract type StorageInterface <: QualifierFeature end   

# memory system

abstract type MemoryType <: QualifierFeature end


# cache

abstract type CacheMapping <: QualifierFeature end

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

