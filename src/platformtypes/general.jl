# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

# query

abstract type Query end
abstract type Yes <: Query end
abstract type No <: Query end

# maintainer

abstract type Maintainer end
abstract type OnPremise <: Maintainer end

# machine

abstract type MachineFamily end
abstract type MachineType end
abstract type MachineSize end

# locale

abstract type Locale end


# manufacturer

abstract type Manufacturer end

# processor 

abstract type ProcessorFamily{U<:Manufacturer} end
abstract type ProcessorSeries{U<:Manufacturer, F<:ProcessorFamily{U}} end
abstract type ProcessorMicroarchitecture{U<:Manufacturer} end
abstract type ProcessorISA end
abstract type ProcessorSIMD <: ProcessorISA end

abstract type Processor{PCL<:(@atleast 0),                 # clock
                        CC<:(@atleast 1),                  # core count
                        TC<:(@atleast 1),                  # threads count
                        U<:Manufacturer,                   # manufacturer
                        F<:ProcessorFamily{U},             # family
                        R<:ProcessorSeries{U,F},           # series
                        A<:ProcessorMicroarchitecture{U},  # microarchitecture
                        S<:ProcessorSIMD,                  # SIMD extension
                        I<:ProcessorISA,                   # Main instruction set
                        P<:(@atleast 0)}                   # Energy efficiency
end

# cache

abstract type CacheMapping end
abstract type CacheDirect <: CacheMapping end
abstract type CacheFullyAssociative <: CacheMapping end
abstract type CacheSetAssociative8 <: CacheMapping end
abstract type CacheSetAssociative12 <: CacheMapping end

# accelerator

abstract type AcceleratorType{M<:Manufacturer} end
abstract type AcceleratorArchitecture{M<:Manufacturer} end
abstract type AcceleratorBackend end
abstract type Accelerator{M<:Manufacturer,                      # manufacturer
                          T<:AcceleratorType{M},                # type
                          A<:AcceleratorArchitecture{M},        # architecture
                          API<:AcceleratorBackend,              # api/backend
                          G<:(@atleast 0),                      # global memory size
                          P<:(@atleast 0)                       # energy efficiency
                         } end


abstract type InterconnectionTopology end
abstract type Interconnection{S<:(@atmost ∞),               # startup time
                              L<:(@atmost ∞),               # latency
                              B<:(@atleast 0),              # bancwidth
                              T<:InterconnectionTopology,   # topology
                              R<:Query                      # RDMA support
                             } end

# storage

abstract type Storage{S<:(@atleast 0),       # size
                      L<:(@atmost ∞),        # latency
                      B<:(@atleast 0),       # bandwidth
                      N<:(@atleast 0)        # network bandwidth
                     } end   

# memory system

abstract type MemorySystem{MS<:(@atleast 0),  # size
                           ML<:(@atmost ∞),   # latency
                           MB<:(@atleast 0)   # bandwidth
                          } end
