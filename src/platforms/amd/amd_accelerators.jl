# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------


# GPU architectures

abstract type AMDGPUArchitecture <: AcceleratorArchitecture end

export AMDGPUArchitecture

abstract type CDNA <: AMDGPUArchitecture end
abstract type CDNA_1_0 <: CDNA end; const CDNA1 = CDNA_1_0
abstract type CDNA_2_0 <: CDNA end; const CDNA2 = CDNA_2_0

export CDNA, CDNA_1_0, CDNA_2_0, CDNA1, CDNA2

abstract type RDNA <: AMDGPUArchitecture end
abstract type RDNA_1_0 <: RDNA end; const RDNA1 = RDNA_1_0
abstract type RDNA_2_0 <: RDNA_1_0 end; const RDNA2 = RDNA_2_0
abstract type RDNA_3_0 <: RDNA_2_0 end; const RDNA3 = RDNA_3_0

export RDNA, RDNA_1_0, RDNA_2_0, RDNA_3_0, RDNA1, RDNA2, RDNA3

abstract type GCN <: AMDGPUArchitecture end
abstract type GCN_1_0 <: GCN end; const CGN1 = GCN_1_0
abstract type GCN_2_0 <: GCN_1_0 end; const GCN2 = GCN_2_0
abstract type GCN_3_0 <: GCN_2_0 end; const GCN3 = GCN_3_0
abstract type GCN_4_0 <: GCN_3_0 end; const GCN4 = GCN_4_0
abstract type GCN_5_0 <: GCN_4_0 end; const GCN5 = GCN_5_0
abstract type GCN_5_1 <: GCN_5_0 end

export GCN, GCN_1_0, GCN_2_0, GCN_3_0, GCN_4_0, GCN_5_0, GCN_5_1, GCN1, GCN2, GCN3, GCN4, GCN5

abstract type TeraScale <: AMDGPUArchitecture end
abstract type TeraScale_1_0 <: TeraScale end; const TeraScale1 = TeraScale_1_0
abstract type TeraScale_2_0 <: TeraScale_1_0 end; const TeraScale2 = TeraScale_2_0
abstract type TeraScale_3_0 <: TeraScale_2_0 end; const TeraScale3 = TeraScale_3_0

export TeraScale, TeraScale_1_0, TeraScale_2_0, TeraScale_3_0, TeraScale1, TeraScale2, TeraScale3


# Accelerators

abstract type AMDAccelerator <: Accelerator end


# families 1

abstract type AMDRadeon <: AMDAccelerator end
abstract type AMDRadeon_Vega <: AMDRadeon end
abstract type AMDRadeon_PRO <: AMDRadeon end
abstract type AMDInstinct <: AMDAccelerator end
abstract type AMDFirePro <: AMDAccelerator end


# families 2

abstract type AMDRadeon_Vega2 <: AMDRadeon end
abstract type AMDRadeon_Vega_RX <: AMDRadeon_Vega end
abstract type AMDRadeon_RX_6000 <: AMDRadeon end
abstract type AMDRadeon_RX_6000S <: AMDRadeon_RX_6000 end
abstract type AMDRadeon_RX_6000M <: AMDRadeon_RX_6000 end
abstract type AMDRadeon_R9 <: AMDRadeon end
abstract type AMDRadeon_R7 <: AMDRadeon end
abstract type AMDRadeon_R5 <: AMDRadeon end
abstract type AMDRadeon_HD <: AMDRadeon end
abstract type AMDRadeon_600 <: AMDRadeon end
abstract type AMDRadeon_5700 <: AMDRadeon end
abstract type AMDRadeon_5600 <: AMDRadeon end
abstract type AMDRadeon_5500 <: AMDRadeon end
abstract type AMDRadeon_5300 <: AMDRadeon end
abstract type AMDRadeon_5000M <: AMDRadeon end
abstract type AMDRadeon_500 <: AMDRadeon end
abstract type AMDRadeon_400 <: AMDRadeon end

# families 2

abstract type AMDRadeon_500X <: AMDRadeon_500 end
abstract type ATIRadeon_HD_5000 <: AMDRadeon_HD end
abstract type AMDRadeon_HD_6000 <: AMDRadeon_HD end
abstract type AMDRadeon_HD_7000 <: AMDRadeon_HD end
abstract type AMDRadeon_HD_8000M <: AMDRadeon_HD end
abstract type AMDRadeon_R5_200 <: AMDRadeon_R5 end
abstract type AMDRadeon_R5_300 <: AMDRadeon_R5 end
abstract type AMDRadeon_R7_200 <: AMDRadeon_R7 end
abstract type AMDRadeon_R7_300 <: AMDRadeon_R7 end
abstract type AMDRadeon_R9_200 <: AMDRadeon_R9 end
abstract type AMDRadeon_R9_300 <: AMDRadeon_R9 end
abstract type AMDRadeon_R9_Fury <: AMDRadeon_R9 end
abstract type AMDRadeon_RX_400 <: AMDRadeon_400 end
abstract type AMDRadeon_RX_500 <: AMDRadeon_500 end
abstract type AMDRadeon_RX_5000M <: AMDRadeon_5000M end
abstract type AMDRadeon_RX_500X <: AMDRadeon_500 end
abstract type AMDRadeon_RX_5300 <: AMDRadeon_5300 end
abstract type AMDRadeon_RX_5500 <: AMDRadeon_5500 end
abstract type AMDRadeon_RX_5600 <: AMDRadeon_5600 end
abstract type AMDRadeon_RX_5700 <: AMDRadeon_5700 end
abstract type AMDRadeon_RX_6400 <: AMDRadeon_RX_6000 end
abstract type AMDRadeon_RX_6500 <: AMDRadeon_RX_6000 end
abstract type AMDRadeon_RX_6600 <: AMDRadeon_RX_6000 end
abstract type AMDRadeon_RX_6700 <: AMDRadeon_RX_6000 end
abstract type AMDRadeon_RX_6800 <: AMDRadeon_RX_6000 end
abstract type AMDRadeon_RX_6900 <: AMDRadeon_RX_6000 end
abstract type AMDRadeon_RX_Vega <: AMDRadeon_Vega_RX end


abstract type AMDRadeon_PRO_V <: AMDRadeon_PRO end
abstract type AMDInstinct_MI <: AMDInstinct end
abstract type AMDRadeon_PRO_W6000 <: AMDRadeon_PRO end
abstract type AMDRadeon_PRO_W6000_Mobile <: AMDRadeon_PRO end
abstract type AMDRadeon_PRO_VII <: AMDRadeon_PRO end
abstract type AMDRadeon_PRO_W5000 <: AMDRadeon_PRO end
abstract type AMDRadeon_PRO_WX_x200 <: AMDRadeon_PRO end
abstract type AMDRadeon_PRO_WX_x100 <: AMDRadeon_PRO end
abstract type AMDFirePro_Wx100 <: AMDFirePro end
abstract type AMDFirePro_Wx000 <: AMDFirePro end
abstract type AMDFirePro_S <: AMDFirePro end
abstract type AMDRadeon_PRO_W5000_Mobile <: AMDRadeon_PRO end
abstract type AMDFirePro_R <: AMDFirePro end
abstract type AMDRadeon_PRO_WX_x100_Mobile <: AMDRadeon_PRO end
abstract type AMDRadeon_PRO_WX_x200_Mobile <: AMDRadeon_PRO end
abstract type AMDFirePro_Mobility <: AMDFirePro end
abstract type AMDFirePro_MultiView <: AMDFirePro end


# models

abstract type AMDInstinct_MI_250X <: AMDInstinct_MI end
abstract type AMDInstinct_MI_250 <: AMDInstinct_MI end
abstract type AMDInstinct_MI_210 <: AMDInstinct_MI end
abstract type AMDInstinct_MI_100 <: AMDInstinct_MI end
abstract type AMDRadeonPRO_V_250 <: AMDRadeon_PRO_V end
abstract type AMDInstinct_MI_60 <: AMDInstinct_MI end
abstract type AMDInstinct_MI_50_32GB <: AMDInstinct_MI end
abstract type AMDInstinct_MI_50_16GB <: AMDInstinct_MI end
abstract type AMDInstinct_MI_25 <: AMDInstinct_MI end
abstract type AMDInstinct_MI_8 <: AMDInstinct_MI end
abstract type AMDInstinct_MI_6 <: AMDInstinct_MI end
abstract type AMDRadeon_PRO_V620 <: AMDRadeon_PRO_V end
abstract type AMDInstinct_MI250X <: AMDInstinct_MI end
abstract type AMDInstinct_MI250 <: AMDInstinct_MI end
abstract type AMDRadeon_PRO_W6800 <: AMDRadeon_PRO_W6000 end
abstract type AMDInstinct_MI210 <: AMDInstinct_MI end
abstract type AMDInstinct_MI100 <: AMDInstinct_MI end
abstract type AMDRadeon_PRO_W6600 <: AMDRadeon_PRO_W6000 end
abstract type AMDRadeon_PRO_V520 <: AMDRadeon_PRO_V end
abstract type AMDRadeon_PRO_W6600M <: AMDRadeon_PRO_W6000_Mobile end
abstract type AMDRadeon_PRO_W6400 <: AMDRadeon_PRO_W6000 end
abstract type AMDRadeon_PRO_W6500M <: AMDRadeon_PRO_W6000_Mobile end
abstract type AMDRadeon_PRO_W5700 <: AMDRadeon_PRO_W5000 end
abstract type AMDRadeon_PRO_W5500 <: AMDRadeon_PRO_W5000 end
abstract type AMDRadeon_PRO_W6300M <: AMDRadeon_PRO_W6000_Mobile end
abstract type AMDRadeon_PRO_WX_8200 <: AMDRadeon_PRO_WX_x200 end
abstract type AMDRadeon_PRO_WX_3200 <: AMDRadeon_PRO_WX_x200 end
abstract type AMDRadeon_PRO_SSG <: AMDRadeon_PRO end
abstract type AMDRadeon_Vega_Frontier_Edition_L <: AMDRadeon_PRO end
abstract type AMDRadeon_Vega_Frontier_Edition_A <: AMDRadeon_PRO end
abstract type AMDRadeon_PRO_Duo <: AMDRadeon_PRO end
abstract type AMDRadeon_PRO_WX_9100 <: AMDRadeon_PRO_WX_x100 end
abstract type AMDRadeon_PRO_WX_7100 <: AMDRadeon_PRO_WX_x100 end
abstract type AMDRadeon_PRO_WX_5100 <: AMDRadeon_PRO_WX_x100 end
abstract type AMDRadeon_PRO_WX_4100 <: AMDRadeon_PRO_WX_x100 end
abstract type AMDInstinct_MI60 <: AMDInstinct_MI end
abstract type AMDRadeon_PRO_WX_3100 <: AMDRadeon_PRO_WX_x100 end
abstract type AMDInstinct_MI50_32GB <: AMDInstinct_MI end
abstract type AMDRadeon_PRO_WX_2100 <: AMDRadeon_PRO_WX_x100 end
abstract type AMDInstinct_MI50_16GB <: AMDInstinct_MI end
abstract type AMDInstinct_MI25 <: AMDInstinct_MI end
abstract type AMDInstinct_MI8 <: AMDInstinct_MI end
abstract type AMDInstinct_MI6 <: AMDInstinct_MI end
abstract type AMDFirePro_W9100_32GB <: AMDFirePro_Wx100 end
abstract type AMDFirePro_W9100 <: AMDFirePro_Wx100 end
abstract type AMDFirePro_W8100 <: AMDFirePro_Wx100 end
abstract type AMDFirePro_W7100 <: AMDFirePro_Wx100 end
abstract type AMDFirePro_W5100 <: AMDFirePro_Wx100 end
abstract type AMDFirePro_W4300 <: AMDFirePro_Wx100 end
abstract type AMDFirePro_W4100 <: AMDFirePro_Wx100 end
abstract type AMDFirePro_W2100 <: AMDFirePro_Wx100 end
abstract type AMDFirePro_W9000 <: AMDFirePro_Wx000 end
abstract type AMDFirePro_W8000 <: AMDFirePro_Wx000 end
abstract type AMDFirePro_W7000 <: AMDFirePro_Wx000 end
abstract type AMDFirePro_W5000 <: AMDFirePro_Wx000 end
abstract type AMDFirePro_W5000_DVI <: AMDFirePro_Wx000 end
abstract type AMDFirePro_W600 <: AMDFirePro_Wx000 end
abstract type AMDFirePro_S10000 <: AMDFirePro_S end
abstract type AMDFirePro_S10000_ActiveCooling <: AMDFirePro_S end
abstract type AMDFirePro_S10000_12GB <: AMDFirePro_S end
abstract type AMDFirePro_S9300_x2 <: AMDFirePro_S end
abstract type AMDFirePro_S9170 <: AMDFirePro_S end
abstract type AMDFirePro_S9150 <: AMDFirePro_S end
abstract type AMDFirePro_S9100 <: AMDFirePro_S end
abstract type AMDFirePro_S9050 <: AMDFirePro_S end
abstract type AMDFirePro_S9000 <: AMDFirePro_S end
abstract type AMDFirePro_S7150_x2 <: AMDFirePro_S end
abstract type AMDFirePro_S7150_ActiveCooling <: AMDFirePro_S end
abstract type AMDFirePro_S7150_PassiveCooling <: AMDFirePro_S end
abstract type AMDFirePro_S7100X <: AMDFirePro_S end
abstract type AMDFirePro_S7000 <: AMDFirePro_S end
abstract type AMDFirePro_S4000X <: AMDFirePro_S end
abstract type AMDRadeon_PRO_W5500M <: AMDRadeon_PRO_W5000_Mobile end
abstract type AMDFirePro_R5000 <: AMDFirePro_R end
abstract type AMDRadeon_PRO_WX_7100_M <: AMDRadeon_PRO_WX_x100_Mobile end
abstract type AMDRadeon_PRO_WX_4170_M <: AMDRadeon_PRO_WX_x100_Mobile end
abstract type AMDRadeon_PRO_WX_4150_M <: AMDRadeon_PRO_WX_x100_Mobile end
abstract type AMDRadeon_PRO_WX_4130_M <: AMDRadeon_PRO_WX_x100_Mobile end
abstract type AMDRadeon_PRO_WX_3200_M <: AMDRadeon_PRO_WX_x200_Mobile end
abstract type AMDRadeon_PRO_WX_3100_M <: AMDRadeon_PRO_WX_x100_Mobile end
abstract type AMDRadeon_PRO_WX_2100_M <: AMDRadeon_PRO_WX_x100_Mobile end
abstract type AMDFirePro_W7170M <: AMDFirePro_Mobility end
abstract type AMDFirePro_W6150M <: AMDFirePro_Mobility end
abstract type AMDFirePro_W5170M <: AMDFirePro_Mobility end
abstract type AMDFirePro_W5130M <: AMDFirePro_Mobility end
abstract type AMDFirePro_W4190M <: AMDFirePro_Mobility end
abstract type AMDFirePro_W4170M <: AMDFirePro_Mobility end
abstract type AMDFirePro_2460 <: AMDFirePro_MultiView end
abstract type AMDFirePro_2270_x1 <: AMDFirePro_MultiView end
abstract type AMDFirePro_2270_1GB <: AMDFirePro_MultiView end
abstract type AMDFirePro_2270 <: AMDFirePro_MultiView end
abstract type AMDRadeon_RX_6950_XT <: AMDRadeon_RX_6900 end
abstract type AMDRadeon_RX_6900_XT <: AMDRadeon_RX_6900 end
abstract type AMDRadeon_RX_6800_XT_MB <: AMDRadeon_RX_6800 end
abstract type AMDRadeon_RX_6800_XT <: AMDRadeon_RX_6800 end
abstract type AMDRadeon_RX_6850M_XT <: AMDRadeon_RX_6000M end
abstract type AMDRadeon_RX_6750_XT <: AMDRadeon_RX_6700 end
abstract type AMDRadeon_RX_6800S <: AMDRadeon_RX_6000S end
abstract type AMDRadeon_RX_6700_XT <: AMDRadeon_RX_6700 end
abstract type AMDRadeon_RX_6650_XT <: AMDRadeon_RX_6600 end
abstract type AMDRadeon_RX_5700_XT_50 <: AMDRadeon_RX_5700 end
abstract type AMDRadeon_RX_6800M <: AMDRadeon_RX_6000M end
abstract type AMDRadeon_RX_6600_XT <: AMDRadeon_RX_6600 end
abstract type AMDRadeon_RX_6700M <: AMDRadeon_RX_6000M end
abstract type AMDRadeon_RX_5700_XT <: AMDRadeon_RX_5700 end
abstract type AMDRadeon_RX_6500_XT <: AMDRadeon_RX_6500 end
abstract type AMDRadeon_RX_6650M_XT <: AMDRadeon_RX_6000M end
abstract type AMDRadeon_VII <: AMDRadeon_Vega2 end
abstract type AMDRadeon_RX_6650M <: AMDRadeon_RX_6000M end
abstract type AMDRadeon_RX_5600_XT <: AMDRadeon_RX_5600 end
abstract type AMDRadeon_RX_6600M <: AMDRadeon_RX_6000M end
abstract type AMDRadeon_RX_5500_XT <: AMDRadeon_RX_5500 end
abstract type AMDRadeon_RX_5700M <: AMDRadeon_RX_5000M end
abstract type AMDRadeon_RX_6500M <: AMDRadeon_RX_6000M end
abstract type AMDRadeon_RX_5600M <: AMDRadeon_RX_5000M end
abstract type AMDRadeon_RX_Vega_64_L <: AMDRadeon_RX_Vega end
abstract type AMDRadeon_RX_6300M <: AMDRadeon_RX_6000M end
abstract type AMDRadeon_RX_6700S <: AMDRadeon_RX_6000S end
abstract type AMDRadeon_RX_5500M <: AMDRadeon_RX_5000M end
abstract type AMDRadeon_RX_5300M <: AMDRadeon_RX_5000M end
abstract type AMDRadeon_RX_Vega_64 <: AMDRadeon_RX_Vega end
abstract type AMDRadeon_RX_Vega_56 <: AMDRadeon_RX_Vega end
abstract type AMDRadeon_RX_6600S <: AMDRadeon_RX_6000S end
abstract type AMDRadeon_RX_590 <: AMDRadeon_RX_500 end
abstract type AMDRadeon_RX_640 <: AMDRadeon_600 end
abstract type AMDRadeon_RX_580 <: AMDRadeon_RX_500 end
abstract type AMDRadeon_RX_580X <: AMDRadeon_RX_500X end
abstract type AMDRadeon_RX_570 <: AMDRadeon_RX_500 end
abstract type AMDRadeon_630 <: AMDRadeon_600 end
abstract type AMDRadeon_RX_570X <: AMDRadeon_RX_500X end
abstract type AMDRadeon_RX_560 <: AMDRadeon_RX_500 end
abstract type AMDRadeon_625 <: AMDRadeon_600 end
abstract type AMDRadeon_RX_560X <: AMDRadeon_RX_500X end
abstract type AMDRadeon_RX_550 <: AMDRadeon_RX_500 end
abstract type AMDRadeon_620 <: AMDRadeon_600 end
abstract type AMDRadeon_RX_550X <: AMDRadeon_RX_500X end
abstract type AMDRadeon_RX_540 <: AMDRadeon_RX_500 end
abstract type AMDRadeon_610 <: AMDRadeon_600 end
abstract type AMDRadeon_550X <: AMDRadeon_500X end
abstract type AMDRadeon_RX_540X <: AMDRadeon_RX_500X end
abstract type AMDRadeon_540 <: AMDRadeon_500 end
abstract type AMDRadeon_540X <: AMDRadeon_500X end
abstract type AMDRadeon_535 <: AMDRadeon_500 end
abstract type AMDRadeon_530 <: AMDRadeon_500 end
abstract type AMDRadeon_520 <: AMDRadeon_500 end
abstract type AMDRadeon_RX_480 <: AMDRadeon_RX_400 end
abstract type AMDRadeon_RX_470 <: AMDRadeon_RX_400 end
abstract type AMDRadeon_RX_460 <: AMDRadeon_RX_400 end
abstract type AMDRadeon_R9_Fury_X <: AMDRadeon_R9_Fury end
abstract type AMDRadeon_R9_Nano <: AMDRadeon_R9_Fury end
abstract type AMDRadeon_R9_390X <: AMDRadeon_R9_300 end
abstract type AMDRadeon_R9_390 <: AMDRadeon_R9_300 end
abstract type AMDRadeon_R9_380X <: AMDRadeon_R9_300 end
abstract type AMDRadeon_R9_380 <: AMDRadeon_R9_300 end
abstract type AMDRadeon_R9_M395X <: AMDRadeon_R9_300 end
abstract type AMDRadeon_R9_M395 <: AMDRadeon_R9_300 end
abstract type AMDRadeon_R9_M390X <: AMDRadeon_R9_300 end
abstract type AMDRadeon_R9_M390 <: AMDRadeon_R9_300 end
abstract type AMDRadeon_R9_M385X <: AMDRadeon_R9_300 end
abstract type AMDRadeon_R9_M385 <: AMDRadeon_R9_300 end
abstract type AMDRadeon_R9_M380 <: AMDRadeon_R9_300 end
abstract type AMDRadeon_R9_M375X <: AMDRadeon_R9_300 end
abstract type AMDRadeon_R9_M375 <: AMDRadeon_R9_300 end
abstract type AMDRadeon_R9_M365X <: AMDRadeon_R9_300 end
abstract type AMDRadeon_R9_M360 <: AMDRadeon_R9_300 end
abstract type AMDRadeon_R9_295X2 <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R9_290X <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R9_290 <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R9_285 <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R9_280X <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R9_280 <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R9_270X <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R9_270 <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R9_M295X <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R9_M290X <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R9_M285X <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R9_M280X <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R9_M280 <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R9_M275X <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R9_M270X <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R9_M265X <: AMDRadeon_R9_200 end
abstract type AMDRadeon_R7_370 <: AMDRadeon_R7_300 end
abstract type AMDRadeon_R7_360 <: AMDRadeon_R7_300 end
abstract type AMDRadeon_R7_M380 <: AMDRadeon_R7_300 end
abstract type AMDRadeon_R7_M375 <: AMDRadeon_R7_300 end
abstract type AMDRadeon_R7_M370 <: AMDRadeon_R7_300 end
abstract type AMDRadeon_R7_M365X <: AMDRadeon_R7_300 end
abstract type AMDRadeon_R7_M365 <: AMDRadeon_R7_300 end
abstract type AMDRadeon_R7_M360 <: AMDRadeon_R7_300 end
abstract type AMDRadeon_R7_M350 <: AMDRadeon_R7_300 end
abstract type AMDRadeon_R7_M340 <: AMDRadeon_R7_300 end
abstract type AMDRadeon_R7_265 <: AMDRadeon_R7_200 end
abstract type AMDRadeon_R7_260X <: AMDRadeon_R7_200 end
abstract type AMDRadeon_R7_260 <: AMDRadeon_R7_200 end
abstract type AMDRadeon_R7_250X <: AMDRadeon_R7_200 end
abstract type AMDRadeon_R7_250 <: AMDRadeon_R7_200 end
abstract type AMDRadeon_R7_240 <: AMDRadeon_R7_200 end
abstract type AMDRadeon_R7_M270 <: AMDRadeon_R7_200 end
abstract type AMDRadeon_R7_M265X <: AMDRadeon_R7_200 end
abstract type AMDRadeon_R7_M265AE <: AMDRadeon_R7_200 end
abstract type AMDRadeon_R7_M265 <: AMDRadeon_R7_200 end
abstract type AMDRadeon_R7_M260X <: AMDRadeon_R7_200 end
abstract type AMDRadeon_R7_M260 <: AMDRadeon_R7_200 end
abstract type AMDRadeon_R5_M335X <: AMDRadeon_R5_300 end
abstract type AMDRadeon_R5_M335 <: AMDRadeon_R5_300 end
abstract type AMDRadeon_R5_M330 <: AMDRadeon_R5_300 end
abstract type AMDRadeon_R5_M320 <: AMDRadeon_R5_300 end
abstract type AMDRadeon_R5_M315 <: AMDRadeon_R5_300 end
abstract type AMDRadeon_R5_235 <: AMDRadeon_R5_200 end
abstract type AMDRadeon_R5_230 <: AMDRadeon_R5_200 end
abstract type AMDRadeon_R5_M255X <: AMDRadeon_R5_200 end
abstract type AMDRadeon_R5_M255 <: AMDRadeon_R5_200 end
abstract type AMDRadeon_R5_M240X <: AMDRadeon_R5_200 end
abstract type AMDRadeon_R5_M240 <: AMDRadeon_R5_200 end
abstract type AMDRadeon_R5_M230 <: AMDRadeon_R5_200 end
abstract type AMDRadeon_HD_8970M <: AMDRadeon_HD_8000M end
abstract type AMDRadeon_HD_8870M <: AMDRadeon_HD_8000M end
abstract type AMDRadeon_HD_8850M <: AMDRadeon_HD_8000M end
abstract type AMDRadeon_HD_8830M <: AMDRadeon_HD_8000M end
abstract type AMDRadeon_HD_8790M <: AMDRadeon_HD_8000M end
abstract type AMDRadeon_HD_8770M <: AMDRadeon_HD_8000M end
abstract type AMDRadeon_HD_8750M <: AMDRadeon_HD_8000M end
abstract type AMDRadeon_HD_8730M <: AMDRadeon_HD_8000M end
abstract type AMDRadeon_HD_8690M <: AMDRadeon_HD_8000M end
abstract type AMDRadeon_HD_8670M <: AMDRadeon_HD_8000M end
abstract type AMDRadeon_HD_8590M <: AMDRadeon_HD_8000M end
abstract type AMDRadeon_HD_8570M <: AMDRadeon_HD_8000M end
abstract type AMDRadeon_HD_7990 <: AMDRadeon_HD_7000 end
abstract type AMDRadeon_HD_7970_GE <: AMDRadeon_HD_7000 end
abstract type AMDRadeon_HD_7970 <: AMDRadeon_HD_7000 end
abstract type AMDRadeon_HD_7950 <: AMDRadeon_HD_7000 end
abstract type AMDRadeon_HD_7870_GE <: AMDRadeon_HD_7000 end
abstract type AMDRadeon_HD_7850 <: AMDRadeon_HD_7000 end
abstract type AMDRadeon_HD_7790 <: AMDRadeon_HD_7000 end
abstract type AMDRadeon_HD_7770_GE <: AMDRadeon_HD_7000 end
abstract type AMDRadeon_HD_7750 <: AMDRadeon_HD_7000 end
abstract type AMDRadeon_HD_7730 <: AMDRadeon_HD_7000 end
abstract type AMDRadeon_HD_6970 <: AMDRadeon_HD_6000 end
abstract type AMDRadeon_HD_6950 <: AMDRadeon_HD_6000 end
abstract type AMDRadeon_HD_6870 <: AMDRadeon_HD_6000 end
abstract type AMDRadeon_HD_6850 <: AMDRadeon_HD_6000 end
abstract type AMDRadeon_HD_6770 <: AMDRadeon_HD_6000 end
abstract type AMDRadeon_HD_6750 <: AMDRadeon_HD_6000 end
abstract type AMDRadeon_HD_6670 <: AMDRadeon_HD_6000 end
abstract type AMDRadeon_HD_6570 <: AMDRadeon_HD_6000 end
abstract type AMDRadeon_HD_6450 <: AMDRadeon_HD_6000 end
abstract type ATI_AMDRadeon_HD_5970 <: ATIRadeon_HD_5000 end
abstract type ATI_AMDRadeon_HD_5870 <: ATIRadeon_HD_5000 end
abstract type ATI_AMDRadeon_HD_5850 <: ATIRadeon_HD_5000 end
abstract type ATI_AMDRadeon_HD_5830 <: ATIRadeon_HD_5000 end
abstract type ATI_AMDRadeon_HD_5770 <: ATIRadeon_HD_5000 end
abstract type ATI_AMDRadeon_HD_5750 <: ATIRadeon_HD_5000 end
abstract type ATI_AMDRadeon_HD_5670 <: ATIRadeon_HD_5000 end
abstract type ATI_AMDRadeon_HD_5570 <: ATIRadeon_HD_5000 end
abstract type ATI_AMDRadeon_HD_5450 <: ATIRadeon_HD_5000 end