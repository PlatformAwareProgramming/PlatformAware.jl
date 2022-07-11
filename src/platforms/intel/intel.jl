# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

abstract type Intel <: Manufacturer end

# Processor models (source: https://ark.intel.com)

abstract type IntelProcessor <: Processor end

# Microarchictetures (from 2010)

abstract type Westmere <: ProcessorMicroarchitecture end
abstract type Saltwell <: ProcessorMicroarchitecture end
abstract type SandyBridge <: ProcessorMicroarchitecture end
abstract type IvyBridge <: ProcessorMicroarchitecture end
abstract type Silvermont <: ProcessorMicroarchitecture end
abstract type Haswell <: ProcessorMicroarchitecture end
abstract type Broadwell <: ProcessorMicroarchitecture end
abstract type Airmont <: ProcessorMicroarchitecture end
abstract type Skylake <: ProcessorMicroarchitecture end
abstract type Goldmont <: ProcessorMicroarchitecture end
abstract type KabyLake <: ProcessorMicroarchitecture end
abstract type GoldmontPlus <: ProcessorMicroarchitecture end
abstract type CoffeeLake <: ProcessorMicroarchitecture end
abstract type CannonLake <: ProcessorMicroarchitecture end
abstract type SunnyCove <: ProcessorMicroarchitecture end
abstract type CometLake <: ProcessorMicroarchitecture end
abstract type IceLake <: ProcessorMicroarchitecture end
abstract type Tremont <: ProcessorMicroarchitecture end
abstract type TigerLake <: ProcessorMicroarchitecture end
abstract type WillowCove <: ProcessorMicroarchitecture end
abstract type AlderLake <: ProcessorMicroarchitecture end
abstract type CypressCove <: ProcessorMicroarchitecture end
abstract type GoldenCove <: ProcessorMicroarchitecture end
abstract type Gracemont <: ProcessorMicroarchitecture end

# SIMD extensions

abstract type MMX <: ProcessorSIMD end

abstract type SSE <: ProcessorSIMD end
abstract type SSE2 <: SSE end
abstract type SSE3 <: SSE2 end
abstract type SSE4 <: SSE3 end
abstract type SSE41 <: SSE4 end
abstract type SSE42 <: SSE4 end

abstract type AVX <: ProcessorSIMD end 
abstract type AVX2 <: AVX end 
abstract type AVX512 <: AVX2 end 




