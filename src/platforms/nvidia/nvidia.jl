# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

# abstract types

abstract type NVIDIA <: Manufacturer end; export NVIDIA

abstract type Ampere <: AcceleratorArchitecture end;  export Ampere
abstract type Kepler <: AcceleratorArchitecture end;  export Kepler
abstract type Maxwell <: AcceleratorArchitecture end; export Maxwell
abstract type Turing <: AcceleratorArchitecture end;  export Turing
abstract type Volta <: AcceleratorArchitecture end;   export Volta

#struct Tesla <: AcceleratorType{NVIDIA} end
#struct TensorCore <: AcceleratorType{NVIDIA} end


#struct NVIDIA_V100 <: AcceleratorModel{NVIDIA,TensorCore,Volta,CUDA7,GBytes{ThirtyTwoUp}} end
#struct NVIDIA_V100S <: AcceleratorModel{NVIDIA,TensorCore,Volta,CUDA7,GBytes{ThirtyTwoUp}} end

# CUDA API

abstract type CUDA <: AcceleratorBackend end; export CUDA

abstract type GeForce_940MX <: Accelerator end; export GeForce_940MX