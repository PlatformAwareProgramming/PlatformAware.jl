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

abstract type SSD <: StorageType end
abstract type HDD <: StorageType end

abstract type SATA <: StorageInterface end
abstract type IDE <: StorageInterface end; const PATA = IDE
abstract type SAS <: StorageInterface end
abstract type SCSI <: StorageInterface end
abstract type FC <: StorageInterface end


# memory system

abstract type MemoryType end

abstract type DDR2 <: MemoryType end
abstract type DDR3 <: MemoryType end
abstract type DDR3L <: DDR3 end
abstract type DDR4 <: MemoryType end
abstract type LPDDR4 <: DDR4 end

# cache

abstract type CacheMapping end
abstract type CacheDirect <: CacheMapping end
abstract type CacheFullyAssociative <: CacheMapping end
abstract type CacheSetAssociative8 <: CacheMapping end
abstract type CacheSetAssociative12 <: CacheMapping end

# SIMD extensions

abstract type Now3D <: ProcessorSIMD end
abstract type Now3Dx <: Now3D end

abstract type MMX <: ProcessorSIMD end

abstract type SSE <: ProcessorSIMD end
abstract type SSE2 <: SSE end
abstract type SSE3 <: SSE2 end
abstract type SSSE3 <: SSE3 end
abstract type SSE4 <: SSSE3 end
abstract type SSE41 <: SSE4 end
abstract type SSE42 <: SSE4 end
abstract type SSE4a <: SSE3 end

abstract type AVX <: ProcessorSIMD end 
abstract type AVX2 <: AVX end 
abstract type AVX512 <: AVX2 end   # https://en.wikipedia.org/wiki/AVX-512

export MMX,
       SSE,
       SSE2,
       SSE3,
       SSE4,
       SSE41,
       SSE42,
       AVX,
       AVX2,
       AVX512