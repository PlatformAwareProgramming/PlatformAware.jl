# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

abstract type Intel <: Manufacturer end; export Intel

# Processor models (source: https://ark.intel.com)

abstract type IntelProcessor <: Processor end; export IntelProcessor

# Microarchictetures (from 2010)

abstract type IntelMicroarchitecture <: ProcessorMicroarchitecture end; export IntelMicroarchitecture

abstract type Westmere <: IntelMicroarchitecture end
abstract type Saltwell <: IntelMicroarchitecture end
abstract type SandyBridge <: IntelMicroarchitecture end
abstract type IvyBridge <: IntelMicroarchitecture end
abstract type Silvermont <: IntelMicroarchitecture end
abstract type BayTrail <: Silvermont end
abstract type Haswell <: IntelMicroarchitecture end
abstract type Broadwell <: IntelMicroarchitecture end
abstract type Airmont <: IntelMicroarchitecture end
abstract type Skylake <: IntelMicroarchitecture end
abstract type Goldmont <: IntelMicroarchitecture end
abstract type KabyLake <: IntelMicroarchitecture end
abstract type GoldmontPlus <: IntelMicroarchitecture end
abstract type CoffeeLake <: IntelMicroarchitecture end
abstract type CannonLake <: IntelMicroarchitecture end
abstract type SunnyCove <: IntelMicroarchitecture end
abstract type CometLake <: IntelMicroarchitecture end
abstract type IceLake <: IntelMicroarchitecture end
abstract type Tremont <: IntelMicroarchitecture end
abstract type TigerLake <: IntelMicroarchitecture end
abstract type CascadeLake <: IntelMicroarchitecture end
abstract type WillowCove <: IntelMicroarchitecture end
abstract type AlderLake <: IntelMicroarchitecture end
abstract type CypressCove <: IntelMicroarchitecture end
abstract type GoldenCove <: IntelMicroarchitecture end
abstract type Gracemont <: IntelMicroarchitecture end
abstract type WhiskeyLake <: IntelMicroarchitecture end
abstract type RocketLake <: IntelMicroarchitecture end
abstract type HewittLake <: IntelMicroarchitecture end 
abstract type CooperLake <: IntelMicroarchitecture end 
abstract type ElkhartLake <: IntelMicroarchitecture end 
abstract type JasperLake <: IntelMicroarchitecture end 
abstract type GeminiLake <: IntelMicroarchitecture end 
abstract type GeminiLakeRefresh <: GeminiLake end 
abstract type ApolloLake <: IntelMicroarchitecture end 
abstract type Braswell <: IntelMicroarchitecture end 
abstract type AmberLake <: IntelMicroarchitecture end 
abstract type Kittson <: IntelMicroarchitecture end 
abstract type Poulson <: IntelMicroarchitecture end 
abstract type CrystalWell <: IntelMicroarchitecture end 
abstract type DevilsCanyon <: IntelMicroarchitecture end 
abstract type Centerton <: IntelMicroarchitecture end 
abstract type SnowRidge <: IntelMicroarchitecture end 
abstract type Cedarview <: IntelMicroarchitecture end 
abstract type ParkerRidge <: IntelMicroarchitecture end 
abstract type Denverton <: IntelMicroarchitecture end 
abstract type Rangeley <: IntelMicroarchitecture end 
abstract type Avoton <: IntelMicroarchitecture end 
abstract type Tukwila <: IntelMicroarchitecture end
abstract type Montvale <: IntelMicroarchitecture end
abstract type Montecito <: IntelMicroarchitecture end

export Westmere,
        Saltwell,
        SandyBridge,
        SandyBridgeEP,
        IvyBridge,
        Silvermont,
        Haswell,
        Broadwell,
        Airmont,
        Skylake,
        Goldmont,
        KabyLake,
        CascadeLake,
        GoldmontPlus,
        CoffeeLake,
        CannonLake,
        SunnyCove,
        CometLake,
        IceLake,
        Tremont,
        TigerLake,
        WillowCove,
        AlderLake,
        CypressCove,
        GoldenCove,
        Gracemont,
        Kittson,
        Poulson,
        Tukwila,
        Montvale,
        Montecito,
        WhiskeyLake,
        HewittLake,
        CooperLake,
        ElkhartLake,
        JasperLake,
        GeminiLake,
        GeminiLakeRefresh,
        ApolloLake,
        Braswell,
        AmberLake,
        CrystalWell,
        DevilsCanyon,
        Centerton,
        SnowRidge,
        Cedarview,
        ParkerRidge,
        Denverton,
        Rangeley,
        Avoton
    
# Intel Accelerators

abstract type IntelAccelerator <: Accelerator end; export IntelAccelerator

abstract type IntelAcceleratorArchitecture <: AcceleratorArchitecture end; export IntelAcceleratorArchitecture
    


