# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

# abstract types

abstract type NVIDIA <: Manufacturer end; export NVIDIA

abstract type NVIDIAArchitecture <: AcceleratorArchitecture end;  export Tesla

abstract type Tesla <: NVIDIAArchitecture end;  export Tesla
abstract type Fermi <: NVIDIAArchitecture end;  export Fermi
abstract type Kepler <: NVIDIAArchitecture end;  export Kepler
abstract type Maxwell <: NVIDIAArchitecture end;  export Maxwell
abstract type Pascal <: NVIDIAArchitecture end;  export Pascal
abstract type Volta <: NVIDIAArchitecture end;  export Volta
abstract type Turing <: NVIDIAArchitecture end;  export Turing
abstract type Ampere <: NVIDIAArchitecture end;  export Ampere
abstract type Hopper <: NVIDIAArchitecture end;  export Hopper

# GPU processors

abstract type NVIDIAGPUProcessor <: AcceleratorProcessor end

abstract type GT200 <: NVIDIAGPUProcessor end; export GT200
abstract type GT200GL <: GT200 end; export GT200GL
abstract type G80 <: NVIDIAGPUProcessor end; export G80
abstract type GF100 <: NVIDIAGPUProcessor end; export GF100
abstract type GK104 <: NVIDIAGPUProcessor end; export GK104
abstract type GK110 <: NVIDIAGPUProcessor end; export GK110
abstract type GK110B <: GK110 end; export GK110B
abstract type GK210 <: NVIDIAGPUProcessor end; export GK210
abstract type GM107 <: NVIDIAGPUProcessor end; export GM107
abstract type GM200 <: NVIDIAGPUProcessor end; export GM200
abstract type GM204 <: NVIDIAGPUProcessor end; export GM206
abstract type GM204_995_A1 <: GM204 end; export GM204_995_A1
abstract type GM204_895_A1 <: GM204 end; export GM204_895_A1
abstract type GM206 <: NVIDIAGPUProcessor end; export GM206
abstract type GP100 <: NVIDIAGPUProcessor end; export GP100
abstract type GP100_890_A1 <: GP100 end; export GP100_890_A1
abstract type GP102 <: NVIDIAGPUProcessor end; export GP102
abstract type GP104 <: NVIDIAGPUProcessor end; export GP104
abstract type GP104_995_A1 <: GP104 end; export GP104_995_A1
abstract type GV100 <: NVIDIAGPUProcessor end; export GV100
abstract type GV100_895_A1 <: GV100 end; export GV100_895_A1
abstract type TU104_895_A1 <: NVIDIAGPUProcessor end; export TU104_895_A1
abstract type GA100 <: NVIDIAGPUProcessor end; export GA100
abstract type GA100_883AA_A1 <: GA100 end; export GA100_883AA_A1
abstract type GA102 <: NVIDIAGPUProcessor end; export GA102
abstract type GA102_890_A1 <: GA102 end; export GA102_890_A1
abstract type GA107 <: NVIDIAGPUProcessor end; export GA107
abstract type GH100 <: NVIDIAGPUProcessor end; export GH100
	

# CUDA API

abstract type CUDA_API <: AcceleratorBackend end; export CUDA_API

abstract type CUDA_1_0 <: CUDA_API end; const CUDA1 = CUDA_1_0; export CUDA_1_0, CUDA1
abstract type CUDA_1_3 <: CUDA_1_0  end; export CUDA_1_3
abstract type CUDA_2_0 <: CUDA_1_3 end; const CUDA2 = CUDA_2_0; export CUDA_2_0, CUDA2
abstract type CUDA_3_0 <: CUDA_2_0 end; const CUDA3 = CUDA_3_0; export CUDA_3_0, CUDA3
abstract type CUDA_3_5 <: CUDA_3_0 end; export CUDA_3_5
abstract type CUDA_3_7 <: CUDA_3_5 end; export CUDA_3_7
abstract type CUDA_5_0 <: CUDA_3_7 end; export CUDA_5_2
abstract type CUDA_5_2 <: CUDA_5_0 end; export CUDA_5_0
abstract type CUDA_6_0 <: CUDA_5_2 end; const CUDA6 = CUDA_6_0; export CUDA_6_0, CUDA6
abstract type CUDA_6_1 <: CUDA_6_0 end; export CUDA_6_1
abstract type CUDA_7_0 <: CUDA_6_1 end; const CUDA7 = CUDA_7_0; export CUDA_7_0, CUDA7
abstract type CUDA_7_5 <: CUDA_7_0 end; export CUDA_7_5
abstract type CUDA_8_0 <: CUDA_7_5 end; const CUDA8 = CUDA_8_0; export CUDA_8_0, CUDA8
abstract type CUDA_8_6 <: CUDA_8_0 end; export CUDA_8_6
abstract type CUDA_9_0 <: CUDA_8_6 end; const CUDA9 = CUDA_9_0; export CUDA_9_0, CUDA9

# GPU models

abstract type NVIDIAAccelerator <: Accelerator end; export NVIDIAAccelerator


# GPU models (Tesla)

abstract type NVIDIATesla <: NVIDIAAccelerator end; export NVIDIATesla

abstract type NVIDIATesla_C870 <: NVIDIATesla end; export NVIDIATesla_C870
abstract type NVIDIATesla_D870 <: NVIDIATesla end; export NVIDIATesla_D870
abstract type NVIDIATesla_S870 <: NVIDIATesla end; export NVIDIATesla_S870
abstract type NVIDIATesla_S1070 <: NVIDIATesla end; export NVIDIATesla_S1070
#abstract type NVIDIATesla_S1070 <: NVIDIATesla end; export NVIDIATesla_S1070
abstract type NVIDIATesla_S1075 <: NVIDIATesla end; export NVIDIATesla_S1075
abstract type NVIDIATesla_C1060 <: NVIDIATesla end; export NVIDIATesla_C1060
abstract type NVIDIATesla_C2050 <: NVIDIATesla end; export NVIDIATesla_C2050
abstract type NVIDIATesla_M2050 <: NVIDIATesla end; export NVIDIATesla_M2050
abstract type NVIDIATesla_C2070 <: NVIDIATesla end; export NVIDIATesla_C2070
abstract type NVIDIATesla_C2075 <: NVIDIATesla end; export NVIDIATesla_C2075
abstract type NVIDIATesla_M2070 <: NVIDIATesla end; export NVIDIATesla_M2070
abstract type NVIDIATesla_M2070Q <: NVIDIATesla end; export NVIDIATesla_M2070Q
abstract type NVIDIATesla_M2090 <: NVIDIATesla end; export NVIDIATesla_M2090
abstract type NVIDIATesla_S2050 <: NVIDIATesla end; export NVIDIATesla_S2050
abstract type NVIDIATesla_S2070 <: NVIDIATesla end; export NVIDIATesla_S2070
abstract type NVIDIATesla_K10 <: NVIDIATesla end; export NVIDIATesla_K10
abstract type NVIDIATesla_K20 <: NVIDIATesla end; export NVIDIATesla_K20
abstract type NVIDIATesla_K20X <: NVIDIATesla end; export NVIDIATesla_K20X
abstract type NVIDIATesla_K40 <: NVIDIATesla end; export NVIDIATesla_K40
abstract type NVIDIATesla_K80 <: NVIDIATesla end; export NVIDIATesla_K80
abstract type NVIDIATesla_M6 <: NVIDIATesla end; export NVIDIATesla_M6
abstract type NVIDIATesla_M60 <: NVIDIATesla end; export NVIDIATesla_M60
abstract type NVIDIATesla_M4 <: NVIDIATesla end; export NVIDIATesla_M4
abstract type NVIDIATesla_M40 <: NVIDIATesla end; export NVIDIATesla_M40
abstract type NVIDIATesla_M10 <: NVIDIATesla end; export NVIDIATesla_M10
abstract type NVIDIATesla_P100 <: NVIDIATesla end; export NVIDIATesla_P100
#abstract type NVIDIATesla_P100 <: NVIDIATesla end; export NVIDIATesla_P100
#abstract type NVIDIATesla_P100 <: NVIDIATesla end; export NVIDIATesla_P100
abstract type NVIDIATesla_P4 <: NVIDIATesla end; export NVIDIATesla_P4
abstract type NVIDIATesla_P40 <: NVIDIATesla end; export NVIDIATesla_P40
abstract type NVIDIATesla_P6 <: NVIDIATesla end; export NVIDIATesla_P6
abstract type NVIDIATesla_V100 <: NVIDIATesla end; export NVIDIATesla_V100
#abstract type NVIDIATesla_V100 <: NVIDIATesla end; export NVIDIATesla_V100
#abstract type NVIDIATesla_V100 <: NVIDIATesla end; export NVIDIATesla_V100
abstract type NVIDIATesla_T4 <: NVIDIATesla end; export NVIDIATesla_T4
abstract type NVIDIATesla_A100 <: NVIDIATesla end; export NVIDIATesla_A100
abstract type NVIDIATesla_A40 <: NVIDIATesla end; export NVIDIATesla_A40
abstract type NVIDIATesla_A10 <: NVIDIATesla end; export NVIDIATesla_A10
abstract type NVIDIATesla_A16 <: NVIDIATesla end; export NVIDIATesla_A16
abstract type NVIDIATesla_A30 <: NVIDIATesla end; export NVIDIATesla_A30
abstract type NVIDIATesla_A2 <: NVIDIATesla end; export NVIDIATesla_A2
abstract type NVIDIATesla_H100 <: NVIDIATesla end; export NVIDIATesla_H100
#abstract type NVIDIATesla_H100 <: NVIDIATesla end; export NVIDIATesla_H100


abstract type NVIDIAQuadro <: NVIDIAAccelerator end; export NVIDIAQuadro

abstract type NVIDIAQuadro_Plex <: NVIDIAAccelerator end; export NVIDIAQuadro_Plex

abstract type NVIDIAQuadro_2200_D2 <: NVIDIAQuadro_Plex end; export NVIDIAQuadro_2200_D2
abstract type NVIDIAQuadro_2200_S4 <: NVIDIAQuadro_Plex end; export NVIDIAQuadro_2200_S4
    

# GeForce 

abstract type NVIDIAGeForce <: NVIDIAAccelerator end; export NVIDIA_GeForce
abstract type NVIDIAGeForce_GTX <: NVIDIAGeForce end; export NVIDIAGeForce_GTX
abstract type NVIDIAGeForce_GTX16 <: NVIDIAGeForce_GTX end; export NVIDIAGeForce_GTX16
abstract type NVIDIAGeForce_GTX20 <: NVIDIAGeForce_GTX end; export NVIDIAGeForce_GTX20
abstract type NVIDIAGeForce_GTX30 <: NVIDIAGeForce_GTX end; export NVIDIAGeForce_GTX30
    
abstract type NVIDIAGeForce_GTX3090 <: NVIDIAGeForce_GTX30 end; export NVIDIAGeForce_GTX3090
abstract type NVIDIAGeForce_GTX3090Ti <: NVIDIAGeForce_GTX30 end; export NVIDIAGeForce_GTX3090Ti
abstract type NVIDIAGeForce_GTX3080 <: NVIDIAGeForce_GTX30 end; export NVIDIAGeForce_GTX3080
abstract type NVIDIAGeForce_GTX3080Ti <: NVIDIAGeForce_GTX30 end; export NVIDIAGeForce_GTX3080Ti
abstract type NVIDIAGeForce_GTX3070 <: NVIDIAGeForce_GTX30 end; export NVIDIAGeForce_GTX3070
abstract type NVIDIAGeForce_GTX3070Ti <: NVIDIAGeForce_GTX30 end; export NVIDIAGeForce_GTX3070Ti
abstract type NVIDIAGeForce_GTX3060 <: NVIDIAGeForce_GTX30 end; export NVIDIAGeForce_GTX3060
abstract type NVIDIAGeForce_GTX3060Ti <: NVIDIAGeForce_GTX30 end; export NVIDIAGeForce_GTX3060Ti
abstract type NVIDIAGeForce_GTX3050 <: NVIDIAGeForce_GTX30 end; export NVIDIAGeForce_GTX3050

abstract type NVIDIAGeForce_GTX2080Ti <: NVIDIAGeForce_GTX20 end; export NVIDIAGeForce_GTX2080Ti
abstract type NVIDIAGeForce_GTX2080 <: NVIDIAGeForce_GTX20 end; export NVIDIAGeForce_GTX2080
abstract type NVIDIAGeForce_GTX2080Super <: NVIDIAGeForce_GTX20 end; export NVIDIAGeForce_GTX2080Super
abstract type NVIDIAGeForce_GTX2070 <: NVIDIAGeForce_GTX20 end; export NVIDIAGeForce_GTX2070
abstract type NVIDIAGeForce_GTX2070Super <: NVIDIAGeForce_GTX20 end; export NVIDIAGeForce_GTX2070Super
abstract type NVIDIAGeForce_GTX2060 <: NVIDIAGeForce_GTX20 end; export NVIDIAGeForce_GTX2060
abstract type NVIDIAGeForce_GTX2060Super <: NVIDIAGeForce_GTX20 end; export NVIDIAGeForce_GTX2060Super

abstract type NVIDIAGeForce_GTX1660 <: NVIDIAGeForce_GTX16 end; export NVIDIAGeForce_GTX1660
abstract type NVIDIAGeForce_GTX1660Ti <: NVIDIAGeForce_GTX16 end; export NVIDIAGeForce_GTX1660Ti
abstract type NVIDIAGeForce_GTX1660Super <: NVIDIAGeForce_GTX16 end; export NVIDIAGeForce_GTX1660Super
abstract type NVIDIAGeForce_GTX1650Super <: NVIDIAGeForce_GTX16 end; export NVIDIAGeForce_GTX1650Super
abstract type NVIDIAGeForce_GTX1650_G5 <: NVIDIAGeForce_GTX16 end; export NVIDIAGeForce_GTX1650_G5
abstract type NVIDIAGeForce_GTX1650_G6 <: NVIDIAGeForce_GTX16 end; export NVIDIAGeForce_GTX1650_G6
abstract type NVIDIAGeForce_GTX1630 <: NVIDIAGeForce_GTX16 end; export NVIDIAGeForce_GTX1630

abstract type NVIDIAGeForce_940MX <: Accelerator end; export GeForce_940MX

