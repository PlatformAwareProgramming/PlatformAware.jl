# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

# abstract types

struct NVIDIA <: Manufacturer end

struct Ampere <: AcceleratorArchitecture{NVIDIA} end
struct Kepler <: AcceleratorArchitecture{NVIDIA} end
struct Maxwell <: AcceleratorArchitecture{NVIDIA} end
struct Turing <: AcceleratorArchitecture{NVIDIA} end
struct Volta <: AcceleratorArchitecture{NVIDIA} end

struct Tesla <: AcceleratorType{NVIDIA} end
struct TensorCore <: AcceleratorType{NVIDIA} end


#struct NVIDIA_V100 <: AcceleratorModel{NVIDIA,TensorCore,Volta,CUDA7,GBytes{ThirtyTwoUp}} end
#struct NVIDIA_V100S <: AcceleratorModel{NVIDIA,TensorCore,Volta,CUDA7,GBytes{ThirtyTwoUp}} end

# CUDA API

abstract type CUDA <: AcceleratorBackend end
