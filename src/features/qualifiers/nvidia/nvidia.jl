# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

# abstract types

abstract type NVIDIA <: Manufacturer end; export NVIDIA

abstract type NVIDIAArchitecture <: AcceleratorArchitecture end; export NVIDIAArchitecture

abstract type Farenheit <: NVIDIAArchitecture end;  export Farenheit
abstract type Celsius <: Farenheit end;  export Celsius
abstract type Kelvin <: Celsius end;  export Kelvin
abstract type Rankine <: Kelvin end;  export Rankine
abstract type Curie <: Rankine end;  export Curie
abstract type Tesla <: Curie end;  export Tesla
abstract type Tesla2 <: Tesla end;  export Tesla2
abstract type Fermi <: Tesla2 end;  export Fermi
abstract type Kepler <: Fermi end;  export Kepler
abstract type Kepler2 <: Kepler end;  export Kepler2
abstract type Maxwell <: Kepler2 end;  export Maxwell
abstract type Maxwell2 <: Maxwell end;  export Maxwell2
abstract type Pascal <: Maxwell2 end;  export Pascal
abstract type Volta <: Pascal end;  export Volta
abstract type Turing <: Volta end;  export Turing
abstract type Ampere <: Turing end;  export Ampere
abstract type Hopper <: Ampere end;  export Hopper

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
abstract type AD102 <: NVIDIAGPUProcessor end; export AD102
abstract type AD103 <: NVIDIAGPUProcessor end; export AD103
abstract type AD104 <: NVIDIAGPUProcessor end; export AD104
abstract type GA103S <: NVIDIAGPUProcessor end; export GA103S
abstract type GA104 <: NVIDIAGPUProcessor end; export GA104
abstract type GA106 <: NVIDIAGPUProcessor end; export GA106
abstract type GA107S <: NVIDIAGPUProcessor end; export GA107S
abstract type GF108 <: NVIDIAGPUProcessor end; export GF108
abstract type GF119 <: NVIDIAGPUProcessor end; export GF119
abstract type GK106 <: NVIDIAGPUProcessor end; export GK106
abstract type GK107 <: NVIDIAGPUProcessor end; export GK107
abstract type GK208B <: NVIDIAGPUProcessor end; export GK208B
abstract type GM108 <: NVIDIAGPUProcessor end; export GM108
abstract type GM108M <: NVIDIAGPUProcessor end; export GM108M
abstract type GM20B <: NVIDIAGPUProcessor end; export GM20B
abstract type GP106 <: NVIDIAGPUProcessor end; export GP106
abstract type GP107 <: NVIDIAGPUProcessor end; export GP107
abstract type GP108 <: NVIDIAGPUProcessor end; export GP108
abstract type GP108B <: NVIDIAGPUProcessor end; export GP108B
abstract type GP10B <: NVIDIAGPUProcessor end; export GP10B
abstract type GV10B <: NVIDIAGPUProcessor end; export GV10B
abstract type TU102 <: NVIDIAGPUProcessor end; export TU102
abstract type TU104 <: NVIDIAGPUProcessor end; export TU104
abstract type TU104B <: NVIDIAGPUProcessor end; export TU104B
abstract type TU106 <: NVIDIAGPUProcessor end; export TU106
abstract type TU106B <: NVIDIAGPUProcessor end; export TU106B
abstract type TU116 <: NVIDIAGPUProcessor end; export TU116
abstract type TU117 <: NVIDIAGPUProcessor end; export TU117
abstract type TU117B <: NVIDIAGPUProcessor end; export TU117B

# CUDA API

abstract type CUDA_API <: AcceleratorBackend end; export CUDA_API

abstract type CUDA_1_0 <: CUDA_API end; const CUDA1 = CUDA_1_0; export CUDA_1_0, CUDA1
abstract type CUDA_1_3 <: CUDA_1_0  end; export CUDA_1_3
abstract type CUDA_2_0 <: CUDA_1_3 end; const CUDA2 = CUDA_2_0; export CUDA_2_0, CUDA2
abstract type CUDA_2_1 <: CUDA_2_0 end; export CUDA_2_1
abstract type CUDA_3_0 <: CUDA_2_1 end; const CUDA3 = CUDA_3_0; export CUDA_3_0, CUDA3
abstract type CUDA_3_5 <: CUDA_3_0 end; export CUDA_3_5
abstract type CUDA_3_7 <: CUDA_3_5 end; export CUDA_3_7
abstract type CUDA_5_0 <: CUDA_3_7 end; export CUDA_5_2
abstract type CUDA_5_2 <: CUDA_5_0 end; export CUDA_5_0
abstract type CUDA_5_3 <: CUDA_5_2 end; export CUDA_5_3
abstract type CUDA_6_0 <: CUDA_5_3 end; const CUDA6 = CUDA_6_0; export CUDA_6_0, CUDA6
abstract type CUDA_6_1 <: CUDA_6_0 end; export CUDA_6_1
abstract type CUDA_6_2 <: CUDA_6_1 end; export CUDA_6_2
abstract type CUDA_7_0 <: CUDA_6_2 end; const CUDA7 = CUDA_7_0; export CUDA_7_0, CUDA7
abstract type CUDA_7_2 <: CUDA_7_0 end; export CUDA_7_2
abstract type CUDA_7_5 <: CUDA_7_2 end; export CUDA_7_5
abstract type CUDA_8_0 <: CUDA_7_5 end; const CUDA8 = CUDA_8_0; export CUDA_8_0, CUDA8
abstract type CUDA_8_6 <: CUDA_8_0 end; export CUDA_8_6
abstract type CUDA_9_0 <: CUDA_8_6 end; const CUDA9 = CUDA_9_0; export CUDA_9_0, CUDA9

# GPU models

abstract type NVIDIAAccelerator <: Accelerator end; export NVIDIAAccelerator

# GPU models (Tensor Core)

abstract type NVIDIATensorCore <: NVIDIAAccelerator end; export NVIDIATensorCore

abstract type NVIDIA_A10 <: NVIDIATensorCore end; export NVIDIA_A10
abstract type NVIDIA_A100 <: NVIDIATensorCore end; export NVIDIA_A100
abstract type NVIDIA_A10G <: NVIDIATensorCore end; export NVIDIA_A10G
abstract type NVIDIA_A16 <: NVIDIATensorCore end; export NVIDIA_A16
abstract type NVIDIA_A2 <: NVIDIATensorCore end; export NVIDIA_A2
abstract type NVIDIA_A30 <: NVIDIATensorCore end; export NVIDIA_A30
abstract type NVIDIA_A40 <: NVIDIATensorCore end; export NVIDIA_A40
abstract type NVIDIA_H100 <: NVIDIATensorCore end; export NVIDIA_H100

# GPU models (Tesla)

abstract type NVIDIATesla <: NVIDIAAccelerator end; export NVIDIATesla

abstract type NVIDIATesla_C870 <: NVIDIATesla end; export NVIDIATesla_C870
abstract type NVIDIATesla_D870 <: NVIDIATesla end; export NVIDIATesla_D870
abstract type NVIDIATesla_S870 <: NVIDIATesla end; export NVIDIATesla_S870
abstract type NVIDIATesla_S1070 <: NVIDIATesla end; export NVIDIATesla_S1070
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
abstract type NVIDIATesla_P4 <: NVIDIATesla end; export NVIDIATesla_P4
abstract type NVIDIATesla_P40 <: NVIDIATesla end; export NVIDIATesla_P40
abstract type NVIDIATesla_P6 <: NVIDIATesla end; export NVIDIATesla_P6
abstract type NVIDIATesla_V100 <: NVIDIATesla end; export NVIDIATesla_V100
abstract type NVIDIATesla_T4 <: NVIDIATesla end; export NVIDIATesla_T4
abstract type NVIDIATesla_A100 <: NVIDIATesla end; export NVIDIATesla_A100
abstract type NVIDIATesla_A40 <: NVIDIATesla end; export NVIDIATesla_A40
abstract type NVIDIATesla_A10 <: NVIDIATesla end; export NVIDIATesla_A10
abstract type NVIDIATesla_A16 <: NVIDIATesla end; export NVIDIATesla_A16
abstract type NVIDIATesla_A30 <: NVIDIATesla end; export NVIDIATesla_A30
abstract type NVIDIATesla_A2 <: NVIDIATesla end; export NVIDIATesla_A2
abstract type NVIDIATesla_H100 <: NVIDIATesla end; export NVIDIATesla_H100
abstract type NVIDIATesla_P10 <: NVIDIATesla end; export NVIDIATesla_P10
abstract type NVIDIATesla_PG500_216 <: NVIDIATesla end; export NVIDIATesla_PG500_216
abstract type NVIDIATesla_PG503_216 <: NVIDIATesla end; export NVIDIATesla_PG503_216
abstract type NVIDIATesla_V100S <: NVIDIATesla end; export NVIDIATesla_V100S

# GPU models (RTX)

abstract type NVIDIA_RTX <: NVIDIAAccelerator end; export NVIDIA_RTX
abstract type NVIDIA_RTX_A1000 <: NVIDIA_RTX end; export NVIDIA_RTX_A1000
abstract type NVIDIA_RTX_A2000 <: NVIDIA_RTX end; export NVIDIA_RTX_A2000
abstract type NVIDIA_RTX_A3000 <: NVIDIA_RTX end; export NVIDIA_RTX_A3000
abstract type NVIDIA_RTX_A4 <: NVIDIA_RTX end; export NVIDIA_RTX_A4
abstract type NVIDIA_RTX_A4000 <: NVIDIA_RTX end; export NVIDIA_RTX_A4000
abstract type NVIDIA_RTX_A4500 <: NVIDIA_RTX end; export NVIDIA_RTX_A4500
abstract type NVIDIA_RTX_A500 <: NVIDIA_RTX end; export NVIDIA_RTX_A500
abstract type NVIDIA_RTX_A5000 <: NVIDIA_RTX end; export NVIDIA_RTX_A5000
abstract type NVIDIA_RTX_A5500 <: NVIDIA_RTX end; export NVIDIA_RTX_A5500
abstract type NVIDIA_RTX_A6000 <: NVIDIA_RTX end; export NVIDIA_RTX_A6000

# GPU models (NVS)

abstract type NVIDIA_NVS <: NVIDIAAccelerator end; export NVIDIA_NVS
abstract type NVIDIA_NVS_810 <: NVIDIA_NVS end; export NVIDIA_NVS_810

# GPU models (Switch)

abstract type NVIDIA_Switch <: NVIDIAAccelerator end; export NVIDIA_Switch
        
# GPU models (P)

abstract type NVIDIA_P <: NVIDIAAccelerator end; export NVIDIA_P

abstract type NVIDIA_P102_100 <: NVIDIA_P end; export NVIDIA_P102_100
abstract type NVIDIA_P102_101 <: NVIDIA_P end; export NVIDIA_P102_101
abstract type NVIDIA_P104_100 <: NVIDIA_P end; export NVIDIA_P104_100
abstract type NVIDIA_P104_101 <: NVIDIA_P end; export NVIDIA_P104_101
abstract type NVIDIA_P106_090 <: NVIDIA_P end; export NVIDIA_P106_090
abstract type NVIDIA_P106_100 <: NVIDIA_P end; export NVIDIA_P106_100
abstract type NVIDIA_P106M <: NVIDIA_P end; export NVIDIA_P106M
abstract type NVIDIA_PG506_232 <: NVIDIA_P end; export NVIDIA_PG506_232
abstract type NVIDIA_PG506_242 <: NVIDIA_P end; export NVIDIA_PG506_242

# GPU models (T)

abstract type NVIDIA_T <: NVIDIAAccelerator end; export NVIDIA_T
abstract type NVIDIA_T1000 <: NVIDIA_T end; export NVIDIA_T1000                      
abstract type NVIDIA_T400 <: NVIDIA_T end; export NVIDIA_T400                      
abstract type NVIDIA_T500 <: NVIDIA_T end; export NVIDIA_T500                      
abstract type NVIDIA_T550 <: NVIDIA_T end; export NVIDIA_T550                      
abstract type NVIDIA_T600 <: NVIDIA_T end; export NVIDIA_T600     

# GPU models (Titan)

abstract type NVIDIATitan <: NVIDIAAccelerator end; export NVIDIATitan

abstract type NVIDIATitan_RTX <: NVIDIATitan end; export NVIDIATitan_RTX
abstract type NVIDIATitan_V <: NVIDIATitan end; export NVIDIATitan_V
abstract type NVIDIATitan_X <: NVIDIATitan end; export NVIDIATitan_X
abstract type NVIDIATitan_Xp <: NVIDIATitan end; export NVIDIATitan_Xp
        
# GPU models (Grid)

abstract type NVIDIAGrid <: NVIDIAAccelerator end; export NVIDIAGrid
abstract type NVIDIAGrid_A100A <: NVIDIAGrid end; export NVIDIAGrid_A100A
abstract type NVIDIAGrid_A100B <: NVIDIAGrid end; export NVIDIAGrid_A100B
abstract type NVIDIAGrid_M10_8Q <: NVIDIAGrid end; export NVIDIAGrid_M10_8Q
abstract type NVIDIAGrid_M3_3020 <: NVIDIAGrid end; export NVIDIAGrid_M3_3020
abstract type NVIDIAGrid_M40 <: NVIDIAGrid end; export NVIDIAGrid_M40
abstract type NVIDIAGrid_M6_8Q <: NVIDIAGrid end; export NVIDIAGrid_M6_8Q
abstract type NVIDIAGrid_M60_1Q <: NVIDIAGrid end; export NVIDIAGrid_M60_1Q
abstract type NVIDIAGrid_M60_2Q <: NVIDIAGrid end; export NVIDIAGrid_M60_2Q
abstract type NVIDIAGrid_M60_4A <: NVIDIAGrid end; export NVIDIAGrid_M60_4A
abstract type NVIDIAGrid_M60_8Q <: NVIDIAGrid end; export NVIDIAGrid_M60_8Q
abstract type NVIDIAGrid_RTX_T10_16 <: NVIDIAGrid end; export NVIDIAGrid_RTX_T10_16
abstract type NVIDIAGrid_RTX_T10_2 <: NVIDIAGrid end; export NVIDIAGrid_RTX_T10_2
abstract type NVIDIAGrid_RTX_T10_4 <: NVIDIAGrid end; export NVIDIAGrid_RTX_T10_4
abstract type NVIDIAGrid_RTX_T10_8 <: NVIDIAGrid end; export NVIDIAGrid_RTX_T10_8

# GPU models (Quadro)

abstract type NVIDIAQuadro <: NVIDIAAccelerator end; export NVIDIAQuadro

abstract type NVIDIAQuadro_Plex <: NVIDIAAccelerator end; export NVIDIAQuadro_Plex

abstract type NVIDIAQuadro_2200_D2 <: NVIDIAQuadro_Plex end; export NVIDIAQuadro_2200_D2
abstract type NVIDIAQuadro_2200_S4 <: NVIDIAQuadro_Plex end; export NVIDIAQuadro_2200_S4
abstract type NVIDIAQuadro_GP100 <: NVIDIAQuadro end; export NVIDIAQuadro_GP100
abstract type NVIDIAQuadro_GV100 <: NVIDIAQuadro end; export NVIDIAQuadro_GV100
abstract type NVIDIAQuadro_K1200 <: NVIDIAQuadro end; export NVIDIAQuadro_K1200
abstract type NVIDIAQuadro_K620M <: NVIDIAQuadro end; export NVIDIAQuadro_K620M
abstract type NVIDIAQuadro_M1000M <: NVIDIAQuadro end; export NVIDIAQuadro_M1000M
abstract type NVIDIAQuadro_M1200 <: NVIDIAQuadro end; export NVIDIAQuadro_M1200
abstract type NVIDIAQuadro_M2000 <: NVIDIAQuadro end; export NVIDIAQuadro_M2000
abstract type NVIDIAQuadro_M2000M <: NVIDIAQuadro end; export NVIDIAQuadro_M2000M
abstract type NVIDIAQuadro_M2200 <: NVIDIAQuadro end; export NVIDIAQuadro_M2200
abstract type NVIDIAQuadro_M3000 <: NVIDIAQuadro end; export NVIDIAQuadro_M3000
abstract type NVIDIAQuadro_M3000M <: NVIDIAQuadro end; export NVIDIAQuadro_M3000M
abstract type NVIDIAQuadro_M4000 <: NVIDIAQuadro end; export NVIDIAQuadro_M4000
abstract type NVIDIAQuadro_M4000M <: NVIDIAQuadro end; export NVIDIAQuadro_M4000M
abstract type NVIDIAQuadro_M5000 <: NVIDIAQuadro end; export NVIDIAQuadro_M5000
abstract type NVIDIAQuadro_M5000M <: NVIDIAQuadro end; export NVIDIAQuadro_M5000M
abstract type NVIDIAQuadro_M500M <: NVIDIAQuadro end; export NVIDIAQuadro_M500M
abstract type NVIDIAQuadro_M520 <: NVIDIAQuadro end; export NVIDIAQuadro_M520
abstract type NVIDIAQuadro_M5500 <: NVIDIAQuadro end; export NVIDIAQuadro_M5500
abstract type NVIDIAQuadro_M6000 <: NVIDIAQuadro end; export NVIDIAQuadro_M6000
abstract type NVIDIAQuadro_M600M <: NVIDIAQuadro end; export NVIDIAQuadro_M600M
abstract type NVIDIAQuadro_M620 <: NVIDIAQuadro end; export NVIDIAQuadro_M620
abstract type NVIDIAQuadro_P1000 <: NVIDIAQuadro end; export NVIDIAQuadro_P1000
abstract type NVIDIAQuadro_P2000 <: NVIDIAQuadro end; export NVIDIAQuadro_P2000
abstract type NVIDIAQuadro_P2200 <: NVIDIAQuadro end; export NVIDIAQuadro_P2200
abstract type NVIDIAQuadro_P3000 <: NVIDIAQuadro end; export NVIDIAQuadro_P3000
abstract type NVIDIAQuadro_P3200 <: NVIDIAQuadro end; export NVIDIAQuadro_P3200
abstract type NVIDIAQuadro_P400 <: NVIDIAQuadro end; export NVIDIAQuadro_P400
abstract type NVIDIAQuadro_P4000 <: NVIDIAQuadro end; export NVIDIAQuadro_P4000
abstract type NVIDIAQuadro_P4200 <: NVIDIAQuadro end; export NVIDIAQuadro_P4200
abstract type NVIDIAQuadro_P500 <: NVIDIAQuadro end; export NVIDIAQuadro_P500
abstract type NVIDIAQuadro_P5000 <: NVIDIAQuadro end; export NVIDIAQuadro_P5000
abstract type NVIDIAQuadro_P520 <: NVIDIAQuadro end; export NVIDIAQuadro_P520
abstract type NVIDIAQuadro_P5200 <: NVIDIAQuadro end; export NVIDIAQuadro_P5200
abstract type NVIDIAQuadro_P600 <: NVIDIAQuadro end; export NVIDIAQuadro_P600
abstract type NVIDIAQuadro_P6000 <: NVIDIAQuadro end; export NVIDIAQuadro_P6000
abstract type NVIDIAQuadro_P620 <: NVIDIAQuadro end; export NVIDIAQuadro_P620
abstract type NVIDIAQuadro_RTX_3000 <: NVIDIAQuadro end; export NVIDIAQuadro_RTX_3000
abstract type NVIDIAQuadro_RTX_4000 <: NVIDIAQuadro end; export NVIDIAQuadro_RTX_4000
abstract type NVIDIAQuadro_RTX_5000 <: NVIDIAQuadro end; export NVIDIAQuadro_RTX_5000
abstract type NVIDIAQuadro_RTX_6000 <: NVIDIAQuadro end; export NVIDIAQuadro_RTX_6000
abstract type NVIDIAQuadro_RTX_8000 <: NVIDIAQuadro end; export NVIDIAQuadro_RTX_8000
abstract type NVIDIAQuadro_T1000 <: NVIDIAQuadro end; export NVIDIAQuadro_T1000
abstract type NVIDIAQuadro_T1200 <: NVIDIAQuadro end; export NVIDIAQuadro_T1200
abstract type NVIDIAQuadro_T2000 <: NVIDIAQuadro end; export NVIDIAQuadro_T2000


# GPU models (Jetson)

abstract type NVIDIAJetson <: NVIDIAAccelerator end; export NVIDIAJetson
abstract type NVIDIAJetson_Nano <: NVIDIAJetson end; export NVIDIAJetson_Nano
abstract type NVIDIAJetson_TX1 <: NVIDIAJetson end; export NVIDIAJetson_TX1
abstract type NVIDIAJetson_TX2 <: NVIDIAJetson end; export NVIDIAJetson_TX2
abstract type NVIDIAJetson_Xavier <: NVIDIAJetson end; export NVIDIAJetson_Xavier

# GPU models (Cmp)

abstract type NVIDIACmp <: NVIDIAAccelerator end; export NVIDIACmp
abstract type NVIDIACmp_170HX <: NVIDIACmp end; export NVIDIACmp_170HX
abstract type NVIDIACmp_30HX <: NVIDIACmp end; export NVIDIACmp_30HX
abstract type NVIDIACmp_40HX <: NVIDIACmp end; export NVIDIACmp_40HX
abstract type NVIDIACmp_50HX <: NVIDIACmp end; export NVIDIACmp_50HX
abstract type NVIDIACmp_70HX <: NVIDIACmp end; export NVIDIACmp_70HX
abstract type NVIDIACmp_90HX <: NVIDIACmp end; export NVIDIACmp_90HX

# GPU models (GeForce)

abstract type NVIDIAGeForce <: NVIDIAAccelerator end; export NVIDIA_GeForce

abstract type NVIDIAGeForce7 <: NVIDIAGeForce end; export NVIDIA_GeForce7
abstract type NVIDIAGeForce8 <: NVIDIAGeForce end; export NVIDIA_GeForce8
abstract type NVIDIAGeForce9 <: NVIDIAGeForce end; export NVIDIA_GeForce9

abstract type NVIDIAGeForce_GT <: NVIDIAGeForce end; export NVIDIAGeForce_GT
abstract type NVIDIAGeForce_MX <: NVIDIAGeForce end; export NVIDIAGeForce_MX
abstract type NVIDIAGeForce_GTX <: NVIDIAGeForce end; export NVIDIAGeForce_GTX
abstract type NVIDIAGeForce_RTX <: NVIDIAGeForce end; export NVIDIAGeForce_RTX


abstract type NVIDIAGeForce_GTX7Series <: NVIDIAGeForce_GTX end; export NVIDIAGeForce_GTX7Series
abstract type NVIDIAGeForce_GTX8Series <: NVIDIAGeForce_GTX end; export NVIDIAGeForce_GTX8Series
abstract type NVIDIAGeForce_GTX9Series <: NVIDIAGeForce_GTX end; export NVIDIAGeForce_GTX9Series
abstract type NVIDIAGeForce_GTX10Series <: NVIDIAGeForce_GTX end; export NVIDIAGeForce_GTX10Series
abstract type NVIDIAGeForce_GTX16Series <: NVIDIAGeForce_GTX end; export NVIDIAGeForce_GTX16Series
abstract type NVIDIAGeForce_RTX20Series <: NVIDIAGeForce_RTX end; export NVIDIAGeForce_RTX20Series
abstract type NVIDIAGeForce_RTX30Series <: NVIDIAGeForce_RTX end; export NVIDIAGeForce_RTX30Series
abstract type NVIDIAGeForce_RTX40Series <: NVIDIAGeForce_RTX end; export NVIDIAGeForce_RTX30Series
    

abstract type NVIDIAGeForce_710A <: NVIDIAGeForce7 end; export NVIDIAGeForce_710A
abstract type NVIDIAGeForce_810M <: NVIDIAGeForce8 end; export NVIDIAGeForce_810M
abstract type NVIDIAGeForce_820M <: NVIDIAGeForce8 end; export NVIDIAGeForce_820M
abstract type NVIDIAGeForce_845M <: NVIDIAGeForce8 end; export NVIDIAGeForce_845M
abstract type NVIDIAGeForce_910M <: NVIDIAGeForce9 end; export NVIDIAGeForce_910M
abstract type NVIDIAGeForce_920A <: NVIDIAGeForce9 end; export NVIDIAGeForce_920A
abstract type NVIDIAGeForce_920M <: NVIDIAGeForce9 end; export NVIDIAGeForce_920M
abstract type NVIDIAGeForce_920MX <: NVIDIAGeForce9 end; export NVIDIAGeForce_920MX
abstract type NVIDIAGeForce_930A <: NVIDIAGeForce9 end; export NVIDIAGeForce_930A
abstract type NVIDIAGeForce_930M <: NVIDIAGeForce9 end; export NVIDIAGeForce_930M
abstract type NVIDIAGeForce_930MX <: NVIDIAGeForce9 end; export NVIDIAGeForce_930MX
abstract type NVIDIAGeForce_940A <: NVIDIAGeForce9 end; export NVIDIAGeForce_940A
abstract type NVIDIAGeForce_940M <: NVIDIAGeForce9 end; export NVIDIAGeForce_940M
abstract type NVIDIAGeForce_940MX <: NVIDIAGeForce9 end; export NVIDIAGeForce_940MX
abstract type NVIDIAGeForce_945A <: NVIDIAGeForce9 end; export NVIDIAGeForce_945A
abstract type NVIDIAGeForce_945M <: NVIDIAGeForce9 end; export NVIDIAGeForce_945M
abstract type NVIDIAGeForce_GT_1010 <: NVIDIAGeForce_GT end; export NVIDIAGeForce_GT_1010
abstract type NVIDIAGeForce_GT_1030 <: NVIDIAGeForce_GT end; export NVIDIAGeForce_GT_1030
abstract type NVIDIAGeForce_GT_610 <: NVIDIAGeForce_GT end; export NVIDIAGeForce_GT_610
abstract type NVIDIAGeForce_GT_710 <: NVIDIAGeForce_GT end; export NVIDIAGeForce_GT_710
abstract type NVIDIAGeForce_GT_720 <: NVIDIAGeForce_GT end; export NVIDIAGeForce_GT_720
abstract type NVIDIAGeForce_GT_730 <: NVIDIAGeForce_GT end; export NVIDIAGeForce_GT_730
abstract type NVIDIAGeForce_GT_740 <: NVIDIAGeForce_GT end; export NVIDIAGeForce_GT_740
abstract type NVIDIAGeForce_GTX_1050 <: NVIDIAGeForce_GTX10Series end; export NVIDIAGeForce_GTX_1050
abstract type NVIDIAGeForce_GTX_1060 <: NVIDIAGeForce_GTX10Series end; export NVIDIAGeForce_GTX_1060
abstract type NVIDIAGeForce_GTX_1070 <: NVIDIAGeForce_GTX10Series end; export NVIDIAGeForce_GTX_1070
abstract type NVIDIAGeForce_GTX_1080 <: NVIDIAGeForce_GTX10Series end; export NVIDIAGeForce_GTX_1080
abstract type NVIDIAGeForce_GTX_1630 <: NVIDIAGeForce_GTX16Series end; export NVIDIAGeForce_GTX_1630
abstract type NVIDIAGeForce_GTX_1650 <: NVIDIAGeForce_GTX16Series end; export NVIDIAGeForce_GTX_1650
abstract type NVIDIAGeForce_GTX_1660 <: NVIDIAGeForce_GTX16Series end; export NVIDIAGeForce_GTX_1660
abstract type NVIDIAGeForce_GTX_750 <: NVIDIAGeForce_GTX7Series end; export NVIDIAGeForce_GTX_750
abstract type NVIDIAGeForce_GTX_760 <: NVIDIAGeForce_GTX7Series end; export NVIDIAGeForce_GTX_760
abstract type NVIDIAGeForce_GTX_860M <: NVIDIAGeForce_GTX8Series end; export NVIDIAGeForce_GTX_860M
abstract type NVIDIAGeForce_GTX_950 <: NVIDIAGeForce_GTX9Series end; export NVIDIAGeForce_GTX_950
abstract type NVIDIAGeForce_GTX_950A <: NVIDIAGeForce_GTX9Series end; export NVIDIAGeForce_GTX_950A
abstract type NVIDIAGeForce_GTX_950M <: NVIDIAGeForce_GTX9Series end; export NVIDIAGeForce_GTX_950M
abstract type NVIDIAGeForce_GTX_960 <: NVIDIAGeForce_GTX9Series end; export NVIDIAGeForce_GTX_960
abstract type NVIDIAGeForce_GTX_960A <: NVIDIAGeForce_GTX9Series end; export NVIDIAGeForce_GTX_960A
abstract type NVIDIAGeForce_GTX_960M <: NVIDIAGeForce_GTX9Series end; export NVIDIAGeForce_GTX_960M
abstract type NVIDIAGeForce_GTX_965M <: NVIDIAGeForce_GTX9Series end; export NVIDIAGeForce_GTX_965M
abstract type NVIDIAGeForce_GTX_980 <: NVIDIAGeForce_GTX9Series end; export NVIDIAGeForce_GTX_980
abstract type NVIDIAGeForce_GTX_980MX <: NVIDIAGeForce_GTX9Series end; export NVIDIAGeForce_GTX_980MX
abstract type NVIDIAGeForce_GTX_TITAN_X <: NVIDIAGeForce_GTX end; export NVIDIAGeForce_GTX_TITAN_X
abstract type NVIDIAGeForce_MX110 <: NVIDIAGeForce_MX end; export NVIDIAGeForce_MX110
abstract type NVIDIAGeForce_MX130 <: NVIDIAGeForce_MX end; export NVIDIAGeForce_MX130
abstract type NVIDIAGeForce_MX150 <: NVIDIAGeForce_MX end; export NVIDIAGeForce_MX150
abstract type NVIDIAGeForce_MX230 <: NVIDIAGeForce_MX end; export NVIDIAGeForce_MX230
abstract type NVIDIAGeForce_MX250 <: NVIDIAGeForce_MX end; export NVIDIAGeForce_MX250
abstract type NVIDIAGeForce_MX330 <: NVIDIAGeForce_MX end; export NVIDIAGeForce_MX330
abstract type NVIDIAGeForce_MX350 <: NVIDIAGeForce_MX end; export NVIDIAGeForce_MX350
abstract type NVIDIAGeForce_MX450 <: NVIDIAGeForce_MX end; export NVIDIAGeForce_MX450
abstract type NVIDIAGeForce_MX550 <: NVIDIAGeForce_MX end; export NVIDIAGeForce_MX550
abstract type NVIDIAGeForce_MX570 <: NVIDIAGeForce_MX end; export NVIDIAGeForce_MX570
abstract type NVIDIAGeForce_RTX_2050 <: NVIDIAGeForce_RTX20Series end; export NVIDIAGeForce_RTX_2050
abstract type NVIDIAGeForce_RTX_2060 <: NVIDIAGeForce_RTX20Series end; export NVIDIAGeForce_RTX_2060
abstract type NVIDIAGeForce_RTX_2070 <: NVIDIAGeForce_RTX20Series end; export NVIDIAGeForce_RTX_2070
abstract type NVIDIAGeForce_RTX_2080 <: NVIDIAGeForce_RTX20Series end; export NVIDIAGeForce_RTX_2080
abstract type NVIDIAGeForce_RTX_3050 <: NVIDIAGeForce_RTX30Series end; export NVIDIAGeForce_RTX_3050
abstract type NVIDIAGeForce_RTX_3060 <: NVIDIAGeForce_RTX30Series end; export NVIDIAGeForce_RTX_3060
abstract type NVIDIAGeForce_RTX_3070 <: NVIDIAGeForce_RTX30Series end; export NVIDIAGeForce_RTX_3070
abstract type NVIDIAGeForce_RTX_3080 <: NVIDIAGeForce_RTX30Series end; export NVIDIAGeForce_RTX_3080
abstract type NVIDIAGeForce_RTX_3090 <: NVIDIAGeForce_RTX30Series end; export NVIDIAGeForce_RTX_3090
abstract type NVIDIAGeForce_RTX_4060 <: NVIDIAGeForce_RTX40Series end; export NVIDIAGeForce_RTX_4060
abstract type NVIDIAGeForce_RTX_4070 <: NVIDIAGeForce_RTX40Series end; export NVIDIAGeForce_RTX_4070
abstract type NVIDIAGeForce_RTX_4080 <: NVIDIAGeForce_RTX40Series end; export NVIDIAGeForce_RTX_4080
abstract type NVIDIAGeForce_RTX_4090 <: NVIDIAGeForce_RTX40Series end; export NVIDIAGeForce_RTX_4090