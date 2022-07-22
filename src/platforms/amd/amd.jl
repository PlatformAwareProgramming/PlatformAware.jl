# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

abstract type AMD <: Manufacturer end; export AMD

# AMD Processors - source: https://www.amd.com/en/products/specifications/processors

abstract type AMDProcessor <: Processor end; export AMDProcessor

# AMD Microarchictetures (from 2010)

abstract type AMDMicroarchitecture <: ProcessorMicroarchitecture end

abstract type K6 <: ProcessorMicroarchitecture end
abstract type K7 <: ProcessorMicroarchitecture end
abstract type K8 <: ProcessorMicroarchitecture end
const Hammer = K8
abstract type K10 <: ProcessorMicroarchitecture end
    
abstract type Zen <: AMDMicroarchitecture end
abstract type Zen2 <: AMDMicroarchitecture end
abstract type Zen3 <: AMDMicroarchitecture end
abstract type Zen4 <: AMDMicroarchitecture end
abstract type Zen4c <: Zen4 end
abstract type Zen5 <: AMDMicroarchitecture end

abstract type Bobcat <: AMDMicroarchitecture end

abstract type Bulldozer <: AMDMicroarchitecture end
abstract type Piledriver <: AMDMicroarchitecture end
abstract type Steamroller <: AMDMicroarchitecture end
abstract type Excavator <: AMDMicroarchitecture end

abstract type Jaguar <: AMDMicroarchitecture end
abstract type Puma <: AMDMicroarchitecture end


# Families 

abstract type AMD_ASeries <: AMDProcessor end	    # AMD A-Series Processors
abstract type AMD_ASeries_PRO <: AMD_ASeries end	# AMD PRO A-Series Processors
abstract type AMDAthlon <: AMDProcessor end	    # AMD Athlon™ Processors
abstract type AMDAthlon_PRO <: AMDAthlon end	    # AMD Athlon™ PRO Processors
abstract type AMD_ESeries <: AMDProcessor end	    # AMD E-Series Processors
abstract type AMDEPYC <: AMDProcessor end	        # AMD EPYC™
abstract type AMD_FX <: AMDProcessor end      # AMD FX-Series Processors
abstract type AMDOpteron <: AMDProcessor end       # AMD Opteron™
abstract type AMDPhenom <: AMDProcessor end	    # AMD Phenom™
abstract type AMDRyzen <: AMDProcessor end	        # AMD Ryzen™ Processors
abstract type AMDRyzen_PRO <: AMDRyzen end	    # AMD Ryzen™ PRO Processors
abstract type AMDSempron <: AMDProcessor end	    # AMD Sempron™
abstract type AMDTurion <: AMDProcessor end	    # AMD Turion™

#Lines 

abstract type AMD_3000 <: AMDProcessor end     #	AMD 3000 Series Mobile Processors with Radeon™ Graphics
abstract type AMD_A12 <: AMD_ASeries end     #	AMD A12-Series APU
abstract type AMD_A10 <: AMD_ASeries end     #	AMD A10-Series APU
abstract type AMD_A8 <: AMD_ASeries end     #	AMD A8-Series APU
abstract type AMD_A6 <: AMD_ASeries end     #	AMD A6-Series APU
abstract type AMD_A9 <: AMD_ASeries end     #	AMD A9-Series APU
abstract type AMD_A4 <: AMD_ASeries end     #	AMD A4-Series APU
abstract type AMD_A10_Business <: AMD_ASeries end     #	AMD Business Class - Quad-Core A10-Series APU
abstract type AMD_A8_Business <: AMD_ASeries end     #	AMD Business Class - Quad-Core A8-Series APU
abstract type AMD_A6_Business <: AMD_ASeries end     #	AMD Business Class - Dual-Core A6-Series APU
abstract type AMDAthlon_PRO_3000 <: AMDAthlon_PRO end     #	AMD Athlon™ PRO 3000 Series Desktop Processors
abstract type AMDAthlon_PRO_Vega <: AMDAthlon_PRO end     #	AMD Athlon™ PRO Desktop Processors with Radeon™ Vega Graphics
abstract type AMDAthlon_Vega <: AMDAthlon end     #	AMD Athlon™ Desktop Processors with Radeon™ Vega Graphics
abstract type AMDAthlon_3000G <: AMDAthlon end     #	AMD Athlon™ 3000 G-Series Desktop Processors with Radeon™ Graphics
abstract type AMDAthlonII_X4 <: AMDAthlon end     #	AMD Athlon™ II X4
abstract type AMDAthlonII_X3 <: AMDAthlon end     #	AMD Athlon™ II X3
abstract type AMDAthlonII_X2 <: AMDAthlon end     #	AMD Athlon™ II X2
abstract type AMDAthlon_X4 <: AMDAthlon end     #	AMD Athlon™ X4
abstract type AMDAthlon_APU <: AMDAthlon end     #	AMD Athlon™ Quad-Core APU
abstract type AMD_E2 <: AMD_ESeries end     #	AMD E2-Series APU
abstract type AMD_E1 <: AMD_ESeries end     #	AMD E1-Series APU
abstract type AMDEPYC_7003 <: AMDEPYC end     #	AMD EPYC™ 7003 Series
abstract type AMDEPYC_7003_VCache <: AMDEPYC_7003 end     #	AMD EPYC™ 7003 Series with AMD 3D V-Cache™
abstract type AMDEPYC_7002 <: AMDEPYC end     #	AMD EPYC™ 7002 Series
abstract type AMDEPYC_7001 <: AMDEPYC end     #	AMD EPYC™ 7001 Series
abstract type AMD_FX_8_Black <: AMD_FX end     #	AMD FX 8-Core Black Edition Processors
abstract type AMD_FX_6_Black <: AMD_FX end     #	AMD FX 6-Core Black Edition Processors
abstract type AMD_FX_4_Black <: AMD_FX end     #	AMD FX 4-Core Black Edition Processors
abstract type AMDOpteron_X1100 <: AMDOpteron end     #	AMD Opteron™ X1100 Series Processors
abstract type AMDOpteron_6300 <: AMDOpteron end     #	AMD Opteron™ 6300 Series Processor
abstract type AMDOpteron_6200 <: AMDOpteron end     #	AMD Opteron™ 6200 Series Processor
abstract type AMDOpteron_6100 <: AMDOpteron end     #	AMD Opteron™ 6100 Series Processor
abstract type AMDOpteron_4300 <: AMDOpteron end     #	AMD Opteron™ 4300 Series Processor
abstract type AMDOpteron_4200 <: AMDOpteron end     #	AMD Opteron™ 4200 Series Processor
abstract type AMDOpteron_3300 <: AMDOpteron end     #	AMD Opteron™ 3300 Series Processor
abstract type AMDOpteron_3200 <: AMDOpteron end     #	AMD Opteron™ 3200 Series Processor
abstract type AMDOpteron_X2100 <: AMDOpteron end     #	AMD Opteron™ X2100 Series APU
abstract type AMDPhenom_II_X6 <: AMDPhenom end     #	AMD Phenom™ II X6
abstract type AMDPhenom_II_X4 <: AMDPhenom end     #	AMD Phenom™ II X4
abstract type AMDPhenom_II_X4_Black <: AMDPhenom end     #	AMD Phenom™ II X4 Black
abstract type AMDPhenom_II_X2 <: AMDPhenom end     #	AMD Phenom™ II X2
abstract type AMDPhenom_II_X2_Black <: AMDPhenom end     #	AMD Phenom™ II X2 Black
abstract type AMDPhenom_II_Black <: AMDPhenom end     #	AMD Phenom™ II Black Edition Quad-Core Mobile Processors
abstract type AMDPhenom_II_QuadCore <: AMDPhenom end     #	AMD Phenom™ II Quad-Core Mobile Processors
abstract type AMDPhenom_II_TripleCore <: AMDPhenom end     #	AMD Phenom™ II Triple-Core Mobile Processors
abstract type AMDPhenom_II_DualCore <: AMDPhenom end     #	AMD Phenom™ II Dual-Core Mobile Processors
abstract type AMDPhenom_X4 <: AMDPhenom end     #	AMD Business Class - AMD Phenom™ X4 Quad-Core
abstract type AMDPhenom_X3 <: AMDPhenom end     #	AMD Business Class - AMD Phenom™ X3 Triple-Core
abstract type AMDPhenom_X2 <: AMDPhenom end     #	AMD Business Class - AMD Ph enom™ X2 Dual-Core
abstract type AMD_A4_PRO <: AMD_ASeries_PRO end     #	AMD PRO A-Series A4 APU
abstract type AMD_A6_PRO <: AMD_ASeries_PRO end     #	AMD PRO A-Series A6 APU
abstract type AMD_A12_PRO <: AMD_ASeries_PRO end     #	AMD PRO A-Series A12 APU
abstract type AMD_A10_PRO <: AMD_ASeries_PRO end     #	AMD PRO A-Series A10 APU
abstract type AMD_A8_PRO <: AMD_ASeries_PRO end     #	AMD PRO A-Series A8 APU
abstract type AMDRyzen_PRO_Threadripper_5000_WX <: AMDRyzen_PRO end     #	AMD Ryzen™ Threadripper™ PRO 5000 WX-Series
abstract type AMDRyzen_PRO_Threadripper <: AMDRyzen_PRO end     #	AMD Ryzen™ Threadripper™ PRO Processors
abstract type AMDRyzen_PRO_9 <: AMDRyzen_PRO end     #	AMD Ryzen™ 9 PRO Desktop Processors
abstract type AMDRyzen_PRO_9_D <: AMDRyzen_PRO_9 end     #	AMD Ryzen™ 9 PRO Desktop Processors
abstract type AMDRyzen_PRO_9_6000 <: AMDRyzen_PRO end     #	AMD Ryzen™ 9 PRO 6000 Series Mobile Processors
abstract type AMDRyzen_PRO_9_6000_M <: AMDRyzen_PRO_9_6000 end     #	AMD Ryzen™ 9 PRO 6000 Series Mobile Processors
abstract type AMDRyzen_PRO_7 <: AMDRyzen_PRO end     #	AMD Ryzen™ 7 PRO Desktop Processors
abstract type AMDRyzen_PRO_7_D <: AMDRyzen_PRO_7 end     #	AMD Ryzen™ 7 PRO Desktop Processors
abstract type AMDRyzen_PRO_7_Vega <: AMDRyzen_PRO end     #	AMD Ryzen™ 7 PRO Mobile Processors with Radeon™ Vega Graphics
abstract type AMDRyzen_PRO_7_Vega_M <: AMDRyzen_PRO_7_Vega end     #	AMD Ryzen™ 7 PRO Mobile Processors with Radeon™ Vega Graphics
abstract type AMDRyzen_PRO_7_5000 <: AMDRyzen_PRO end     #	AMD Ryzen™ 7 PRO 5000 Series Desktop Processors
abstract type AMDRyzen_PRO_7_5000_D <: AMDRyzen_PRO_7_5000 end     #	AMD Ryzen™ 7 PRO 5000 Series Desktop Processors
abstract type AMDRyzen_PRO_7_5000_M <: AMDRyzen_PRO_7_5000 end     #	AMD Ryzen™ 7 PRO 5000 Series Mobile Processors
abstract type AMDRyzen_PRO_7_4000 <: AMDRyzen_PRO end     #	AMD Ryzen™ 7 PRO 4000 Series Desktop Processors
abstract type AMDRyzen_PRO_7_4000_D <: AMDRyzen_PRO_7_4000 end     #	AMD Ryzen™ 7 PRO 4000 Series Desktop Processors
abstract type AMDRyzen_PRO_7_4000_M <: AMDRyzen_PRO_7_4000 end     #	AMD Ryzen™ 7 PRO 4000 Series Mobile Processors
abstract type AMDRyzen_PRO_7_6000 <: AMDRyzen_PRO end     #	AMD Ryzen™ 7 PRO 6000 Series Mobile Processors
abstract type AMDRyzen_PRO_7_6000_M <: AMDRyzen_PRO_7_6000 end     #	AMD Ryzen™ 7 PRO 6000 Series Mobile Processors
abstract type AMDRyzen_PRO_5 <: AMDRyzen_PRO end          #	AMD Ryzen™ 5 PRO Desktop Processors
abstract type AMDRyzen_PRO_5_D <: AMDRyzen_PRO_5 end          #	AMD Ryzen™ 5 PRO Desktop Processors
abstract type AMDRyzen_PRO_5_Vega <: AMDRyzen_PRO end     #	AMD Ryzen™ 5 PRO Desktop Processors with Radeon™ Vega Graphics
abstract type AMDRyzen_PRO_5_3000 <: AMDRyzen_PRO end     #	AMD Ryzen™ 5 PRO 3000 Series Desktop Processors
abstract type AMDRyzen_PRO_5_4000 <: AMDRyzen_PRO end     #	AMD Ryzen™ 5 PRO 4000 Series Desktop Processors
abstract type AMDRyzen_PRO_5_5000 <: AMDRyzen_PRO end     #	AMD Ryzen™ 5 PRO 5000 Series Mobile Processors
abstract type AMDRyzen_PRO_5_6000 <: AMDRyzen_PRO end     #	AMD Ryzen™ 5 PRO 5000 Series Desktop Processors
abstract type AMDRyzen_PRO_3 <: AMDRyzen_PRO end     #	AMD Ryzen™ 3 PRO Desktop Processors
abstract type AMDRyzen_PRO_3_Vega <: AMDRyzen_PRO end     #	AMD Ryzen™ 3 PRO Desktop Processors with Radeon™ Vega Graphics
abstract type AMDRyzen_PRO_3_4000 <: AMDRyzen_PRO end     #	AMD Ryzen™ 3 PRO 4000 Series Desktop Processors
abstract type AMDRyzen_PRO_3_5000 <: AMDRyzen_PRO end     #	AMD Ryzen™ 3 PRO 5000 Series Desktop Processors
abstract type AMDRyzen_9 <: AMDRyzen end     #	AMD Ryzen™ 9 Desktop Processors
abstract type AMDRyzen_7 <: AMDRyzen end     #	AMD Ryzen™ 7 Desktop Processors
abstract type AMDRyzen_5 <: AMDRyzen end     #	AMD Ryzen™ 5 Desktop Processors
abstract type AMDRyzen_Threadripper <: AMDRyzen end     #	AMD Ryzen™ Threadripper™ Processors
abstract type AMDRyzen_3 <: AMDRyzen end     #	AMD Ryzen™ 3 Mobile Processors with Radeon™ Graphics
abstract type AMDRyzen_7_5000G <: AMDRyzen_7 end     #	AMD Ryzen™ 7 5000 G-Series Desktop Processors with Radeon™ Graphics
abstract type AMDRyzen_5_5000G <: AMDRyzen_5 end     #	AMD Ryzen™ 5 5000 G-Series Desktop Processors with Radeon™ Graphics
abstract type AMDRyzen_3_5000G <: AMDRyzen_3 end     #	AMD Ryzen™ 3 5000 G-Series Desktop Processors with Radeon™ Graphics
abstract type AMDRyzen_7_4000G <: AMDRyzen_7 end     #	AMD Ryzen™ 7 4000 G-Series Desktop Processors with Radeon™ Graphics
abstract type AMDRyzen_5_4000G <: AMDRyzen_5 end     #	AMD Ryzen™ 5 4000 G-Series Desktop Processors with Radeon™ Graphics
abstract type AMDRyzen_3_4000G <: AMDRyzen_3 end     #	AMD Ryzen™ 3 4000 G-Series Desktop Processors with Radeon™ Graphics
abstract type AMDRyzen_5_Vega <: AMDRyzen_5 end     #	AMD Ryzen™ 5 Desktop Processors with Radeon™ Vega Graphics
abstract type AMDRyzen_7_Surface <: AMDRyzen_7 end     #	AMD Ryzen™ 7 Mobile Processors with Radeon™ Graphics Microsoft Surface® Edition
abstract type AMDRyzen_5_Surface <: AMDRyzen_5 end     #	AMD Ryzen™ 5 Mobile Processors with Radeon™ Graphics Microsoft Surface® Edition
abstract type AMDRyzen_7_RXVega11_Surface <: AMDRyzen_7 end     #	AMD Ryzen™ 7 Mobile Processors with Radeon™ RX Vega 11 Graphics Microsoft Surface® Edition
abstract type AMDRyzen_3_Vega <: AMDRyzen_3 end     #	AMD Ryzen™ 3 Desktop Processors with Radeon™ Vega Graphics
abstract type AMDRyzen_7_RXVega <: AMDRyzen_7 end     #	AMD Ryzen™ 7 Mobile Processors with Radeon™ RX Vega Graphics
abstract type AMDRyzen_5_Vega_9_Surface <: AMDRyzen_5 end     #	AMD Ryzen™ 5 Mobile Processors with Radeon™ Vega 9 Graphics Microsoft Surface® Edition
abstract type AMDSempron_Quad_APU <: AMDSempron end     #	AMD Sempron™ Quad-Core APU
abstract type AMDSempron_Dual_APU <: AMDSempron end     #	AMD Sempron™ Dual-Core APU
abstract type AMDTurion_64_X2 <: AMDTurion end          #	AMD Turion™ 64 X2 Dual-Core Mobile Technology

# models

abstract type AMDAthlon_II_X2_255e <: AMDAthlonII_X2 end
abstract type AMDAthlon_II_X3_460 <: AMDAthlonII_X3 end
abstract type AMDAthlon_II_X3_425e <: AMDAthlonII_X3 end
abstract type AMDAthlon_II_X4_631 <: AMDAthlonII_X4 end
abstract type AMDAthlon_II_X4_638 <: AMDAthlonII_X4 end
abstract type AMDAthlon_II_X4_641 <: AMDAthlonII_X4 end
abstract type AMDAthlon_II_X4_620e <: AMDAthlonII_X4 end
abstract type AMDAthlon_X4_740 <: AMDAthlon_X4 end
abstract type AMDAthlon_X4_750 <: AMDAthlon_X4 end
abstract type AMDAthlon_X4_750K <: AMDAthlon_X4 end
abstract type AMDAthlon_X4_760K <: AMDAthlon_X4 end
abstract type AMDAthlon_X4_845 <: AMDAthlon_X4 end
abstract type AMDAthlon_X4_860K <: AMDAthlon_X4 end
abstract type AMDAthlon_X4_870K <: AMDAthlon_X4 end
abstract type AMDAthlon_X4_880K <: AMDAthlon_X4 end
abstract type AMDPhenom_X2_B57 <: AMDPhenom_X2 end
abstract type AMDPhenom_X2_B59 <: AMDPhenom_X2 end
abstract type AMDPhenom_X2_B60 <: AMDPhenom_X2 end
abstract type AMDPhenom_X3_B75 <: AMDPhenom_X3 end
abstract type AMDPhenom_X3_B77 <: AMDPhenom_X3 end
abstract type AMDPhenom_X4_B95 <: AMDPhenom_X4 end
abstract type AMDPhenom_X4_B97 <: AMDPhenom_X4 end
abstract type AMDPhenom_X4_B99 <: AMDPhenom_X4 end
abstract type AMD_E1_7010 <: AMD_E1 end
abstract type AMD_E1_Micro_6200T <: AMD_E1 end
abstract type AMD_E1_2100 <: AMD_E1 end
abstract type AMD_E1_2200 <: AMD_E1 end
abstract type AMD_E1_2500 <: AMD_E1 end
abstract type AMD_E1_6010 <: AMD_E1 end
abstract type AMD_E2_7110 <: AMD_E2 end
abstract type AMD_E2_3000 <: AMD_E2 end
abstract type AMD_E2_3800 <: AMD_E2 end
abstract type AMD_E2_6110 <: AMD_E2 end
abstract type AMD_FX_4100 <: AMD_FX_4_Black end
abstract type AMD_FX_4130 <: AMD_FX_4_Black end
abstract type AMD_FX_4170 <: AMD_FX_4_Black end
abstract type AMD_FX_4300 <: AMD_FX_4_Black end
abstract type AMD_FX_4320 <: AMD_FX_4_Black end
abstract type AMD_FX_4350 <: AMD_FX_4_Black end
abstract type AMD_FX_6100 <: AMD_FX_6_Black end
abstract type AMD_FX_6200 <: AMD_FX_6_Black end
abstract type AMD_FX_6300 <: AMD_FX_6_Black end
abstract type AMD_FX_6350 <: AMD_FX_6_Black end
abstract type AMD_FX_8120 <: AMD_FX_8_Black end
abstract type AMD_FX_8150 <: AMD_FX_8_Black end
abstract type AMD_FX_8300 <: AMD_FX_8_Black end
abstract type AMD_FX_8310 <: AMD_FX_8_Black end
abstract type AMD_FX_8320 <: AMD_FX_8_Black end
abstract type AMD_FX_8320E <: AMD_FX_8_Black end
abstract type AMD_FX_8350 <: AMD_FX_8_Black end
abstract type AMD_FX_8370 <: AMD_FX_8_Black end
abstract type AMD_FX_8370E <: AMD_FX_8_Black end
abstract type AMD_FX_9370 <: AMD_FX_8_Black end
abstract type AMD_FX_9590 <: AMD_FX_8_Black end
abstract type AMD_FX_8800P <: AMD_FX end
abstract type AMD_FX_7500 <: AMD_FX end
abstract type AMD_FX_7600P <: AMD_FX end
abstract type AMDOpteron_3280 <: AMDOpteron_3200 end
abstract type AMDOpteron_3250 <: AMDOpteron_3200 end
abstract type AMDOpteron_3260 <: AMDOpteron_3200 end
abstract type AMDOpteron_3365 <: AMDOpteron_3300 end
abstract type AMDOpteron_3380 <: AMDOpteron_3300 end
abstract type AMDOpteron_3320 <: AMDOpteron_3300 end
abstract type AMDOpteron_3350 <: AMDOpteron_3300 end
abstract type AMDOpteron_4226 <: AMDOpteron_4200 end
abstract type AMDOpteron_4234 <: AMDOpteron_4200 end
abstract type AMDOpteron_4238 <: AMDOpteron_4200 end
abstract type AMDOpteron_4240 <: AMDOpteron_4200 end
abstract type AMDOpteron_4280 <: AMDOpteron_4200 end
abstract type AMDOpteron_4284 <: AMDOpteron_4200 end
abstract type AMDOpteron_4228 <: AMDOpteron_4200 end
abstract type AMDOpteron_4230 <: AMDOpteron_4200 end
abstract type AMDOpteron_4256 <: AMDOpteron_4200 end
abstract type AMDOpteron_4274 <: AMDOpteron_4200 end
abstract type AMDOpteron_4276 <: AMDOpteron_4200 end
abstract type AMDOpteron_4334 <: AMDOpteron_4300 end
abstract type AMDOpteron_4340 <: AMDOpteron_4300 end
abstract type AMDOpteron_4365 <: AMDOpteron_4300 end
abstract type AMDOpteron_4386 <: AMDOpteron_4300 end
abstract type AMDOpteron_4310 <: AMDOpteron_4300 end
abstract type AMDOpteron_4332 <: AMDOpteron_4300 end
abstract type AMDOpteron_4376 <: AMDOpteron_4300 end
abstract type AMDOpteron_6140 <: AMDOpteron_6100 end
abstract type AMDOpteron_6176 <: AMDOpteron_6100 end
abstract type AMDOpteron_6132 <: AMDOpteron_6100 end
abstract type AMDOpteron_6166 <: AMDOpteron_6100 end
abstract type AMDOpteron_6180 <: AMDOpteron_6100 end
abstract type AMDOpteron_6204 <: AMDOpteron_6200 end
abstract type AMDOpteron_6212 <: AMDOpteron_6200 end
abstract type AMDOpteron_6220 <: AMDOpteron_6200 end
abstract type AMDOpteron_6234 <: AMDOpteron_6200 end
abstract type AMDOpteron_6238 <: AMDOpteron_6200 end
abstract type AMDOpteron_6272 <: AMDOpteron_6200 end
abstract type AMDOpteron_6274 <: AMDOpteron_6200 end
abstract type AMDOpteron_6276 <: AMDOpteron_6200 end
abstract type AMDOpteron_6278 <: AMDOpteron_6200 end
abstract type AMDOpteron_6262 <: AMDOpteron_6200 end
abstract type AMDOpteron_6282 <: AMDOpteron_6200 end
abstract type AMDOpteron_6284 <: AMDOpteron_6200 end
abstract type AMDOpteron_6308 <: AMDOpteron_6300 end
abstract type AMDOpteron_6320 <: AMDOpteron_6300 end
abstract type AMDOpteron_6328 <: AMDOpteron_6300 end
abstract type AMDOpteron_6344 <: AMDOpteron_6300 end
abstract type AMDOpteron_6348 <: AMDOpteron_6300 end
abstract type AMDOpteron_6376 <: AMDOpteron_6300 end
abstract type AMDOpteron_6378 <: AMDOpteron_6300 end
abstract type AMDOpteron_6380 <: AMDOpteron_6300 end
abstract type AMDOpteron_6338P <: AMDOpteron_6300 end
abstract type AMDOpteron_6366 <: AMDOpteron_6300 end
abstract type AMDOpteron_6370P <: AMDOpteron_6300 end
abstract type AMDOpteron_6386 <: AMDOpteron_6300 end
abstract type AMDOpteron_X1150 <: AMDOpteron_X1100 end
abstract type AMDPhenom_II_X940 <: AMDPhenom_II_Black end
abstract type AMDPhenom_II_N640 <: AMDPhenom_II_DualCore end
abstract type AMDPhenom_II_N660 <: AMDPhenom_II_DualCore end
abstract type AMDPhenom_II_P650 <: AMDPhenom_II_DualCore end
abstract type AMDPhenom_II_N960 <: AMDPhenom_II_QuadCore end
abstract type AMDPhenom_II_N970 <: AMDPhenom_II_QuadCore end
abstract type AMDPhenom_II_N870 <: AMDPhenom_II_TripleCore end
abstract type AMDPhenom_II_P860 <: AMDPhenom_II_TripleCore end
abstract type AMDPhenom_II_X2_565 <: AMDPhenom_II_X2 end
abstract type AMDPhenom_II_X2_Black_555 <: AMDPhenom_II_X2_Black end
abstract type AMDPhenom_II_X2_Black_565 <: AMDPhenom_II_X2_Black end
abstract type AMDPhenom_II_X2_Black_570 <: AMDPhenom_II_X2_Black end
abstract type AMDPhenom_II_840 <: AMDPhenom_II_X4 end
abstract type AMDPhenom_II_850 <: AMDPhenom_II_X4 end
abstract type AMDPhenom_II_965 <: AMDPhenom_II_X4_Black end
abstract type AMDPhenom_II_975 <: AMDPhenom_II_X4_Black end
abstract type AMDPhenom_II_980 <: AMDPhenom_II_X4_Black end
abstract type AMDPhenom_II_960T <: AMDPhenom_II_X4_Black end
abstract type AMDPhenom_II_1045T <: AMDPhenom_II_X6 end
abstract type AMDPhenom_II_1075T <: AMDPhenom_II_X6 end
abstract type AMDSempron_2800plus <: AMDSempron end
abstract type AMDTurion_TL52 <: AMDTurion_64_X2 end
abstract type AMDTurion_TL56 <: AMDTurion_64_X2 end
abstract type AMDTurion_TL60 <: AMDTurion_64_X2 end
abstract type AMDTurion_TL64 <: AMDTurion_64_X2 end
abstract type AMD_3015Ce <: AMD_3000 end
abstract type AMD_3015e <: AMD_3000 end
abstract type AMD_3020e <: AMD_3000 end
abstract type AMD_A10_6_8700P_APU <: AMD_A10 end
abstract type AMD_A10_6700 <: AMD_A10 end
abstract type AMD_A10_6700T <: AMD_A10 end
abstract type AMD_A10_6790B <: AMD_A10_Business end
abstract type AMD_A10_6790K <: AMD_A10 end
abstract type AMD_A10_6800B <: AMD_A10_Business end
abstract type AMD_A10_6800K <: AMD_A10 end
abstract type AMD_A10_7_9600P_APU <: AMD_A10 end
abstract type AMD_A10_7_9630P_APU <: AMD_A10 end
abstract type AMD_A10_7_9700_APU <: AMD_A10 end
abstract type AMD_A10_7_9700E_APU <: AMD_A10 end
abstract type AMD_A10_7300 <: AMD_A10 end
abstract type AMD_A10_7400P <: AMD_A10 end
abstract type AMD_A10_7700K <: AMD_A10 end
abstract type AMD_A10_7800 <: AMD_A10 end
abstract type AMD_A10_7850K <: AMD_A10 end
abstract type AMD_A10_7860K <: AMD_A10 end
abstract type AMD_A10_7870K <: AMD_A10 end
abstract type AMD_A10_7890K <: AMD_A10 end
abstract type AMD_A10_8700P <: AMD_A10 end
abstract type AMD_A10_Micro_6700T <: AMD_A10 end
abstract type AMD_A10_PRO_7350B <: AMD_A10 end
abstract type AMD_A10_PRO_7800B <: AMD_A10 end
abstract type AMD_A10_PRO_7850B <: AMD_A10 end
abstract type AMD_A12_7_9700P_APU <: AMD_A12 end
abstract type AMD_A12_7_9730P_APU <: AMD_A12 end
abstract type AMD_A12_7_9800_APU <: AMD_A12 end
abstract type AMD_A12_7_9800E_APU <: AMD_A12 end
abstract type AMD_A4_5000 <: AMD_A4 end
abstract type AMD_A4_5100 <: AMD_A4 end
abstract type AMD_A4_6210 <: AMD_A4 end
abstract type AMD_A4_6300 <: AMD_A4 end
abstract type AMD_A4_6320 <: AMD_A4 end
abstract type AMD_A4_7_9120_APU <: AMD_A4 end
abstract type AMD_A4_7_9120C_APU <: AMD_A4 end
abstract type AMD_A4_7_9125_APU <: AMD_A4 end
abstract type AMD_A4_7210 <: AMD_A4 end
abstract type AMD_A4_7300 <: AMD_A4 end
abstract type AMD_A4_Micro_6400T <: AMD_A4 end
abstract type AMD_A4_PRO_3340B <: AMD_A4 end
abstract type AMD_A4_PRO_3350B <: AMD_A4 end
abstract type AMD_A4_PRO_7300B <: AMD_A4 end
abstract type AMD_A4_PRO_7350B <: AMD_A4 end
abstract type AMD_A6_5200 <: AMD_A6 end
abstract type AMD_A6_5200M <: AMD_A6 end
abstract type AMD_A6_5350M <: AMD_A6 end
abstract type AMD_A6_6310 <: AMD_A6 end
abstract type AMD_A6_6400B <: AMD_A6_Business end
abstract type AMD_A6_6400K <: AMD_A6 end
abstract type AMD_A6_6420B <: AMD_A6_Business end
abstract type AMD_A6_6420K <: AMD_A6 end
abstract type AMD_A6_7_9210_APU <: AMD_A6 end
abstract type AMD_A6_7_9220_APU <: AMD_A6 end
abstract type AMD_A6_7_9220C_APU <: AMD_A6 end
abstract type AMD_A6_7_9225_APU <: AMD_A6 end
abstract type AMD_A6_7_9500_APU <: AMD_A6 end
abstract type AMD_A6_7_9500E_APU <: AMD_A6 end
abstract type AMD_A6_7_9550_APU <: AMD_A6 end
abstract type AMD_A6_7000 <: AMD_A6 end
abstract type AMD_A6_7310 <: AMD_A6 end
abstract type AMD_A6_7400K <: AMD_A6 end
abstract type AMD_A6_7470K <: AMD_A6 end
abstract type AMD_A6_8500P <: AMD_A6 end
abstract type AMD_A6_PRO_7050B <: AMD_A6 end
abstract type AMD_A6_PRO_7400B <: AMD_A6 end
abstract type AMD_A8_6_8600P_APU <: AMD_A8 end
abstract type AMD_A8_6410 <: AMD_A8 end
abstract type AMD_A8_6500 <: AMD_A8 end
abstract type AMD_A8_6500B <: AMD_A8_Business end
abstract type AMD_A8_6500T <: AMD_A8 end
abstract type AMD_A8_6600K <: AMD_A8 end
abstract type AMD_A8_7_9600_APU <: AMD_A8 end
abstract type AMD_A8_7100 <: AMD_A8 end
abstract type AMD_A8_7200P <: AMD_A8 end
abstract type AMD_A8_7410 <: AMD_A8 end
abstract type AMD_A8_7600 <: AMD_A8 end
abstract type AMD_A8_7650K <: AMD_A8 end
abstract type AMD_A8_7670K <: AMD_A8 end
abstract type AMD_A8_8600P <: AMD_A8 end
abstract type AMD_A8_PRO_7150B <: AMD_A8 end
abstract type AMD_A8_PRO_7600B <: AMD_A8 end
abstract type AMD_A9_7_9410_APU <: AMD_A9 end
abstract type AMD_A9_7_9420_APU <: AMD_A9 end
abstract type AMD_A9_7_9425_APU <: AMD_A9 end
abstract type AMD_E2_7_9010_APU <: AMD_E2 end
abstract type AMD_FX_6_8800P_APU <: AMD_FX end
abstract type AMD_FX_7_9800P_APU <: AMD_FX end
abstract type AMD_FX_7_9830P_APU <: AMD_FX end
abstract type AMD_A10_PRO_6_8700B_APU <: AMD_A10 end
abstract type AMD_A10_PRO_6_8730B_APU <: AMD_A10 end
abstract type AMD_A10_PRO_6_8750B_APU <: AMD_A10 end
abstract type AMD_A10_PRO_6_8770_APU <: AMD_A10 end
abstract type AMD_A10_PRO_6_8770E_APU <: AMD_A10 end
abstract type AMD_A10_PRO_6_8850B_APU <: AMD_A10 end
abstract type AMD_A10_PRO_7_9700_APU <: AMD_A10 end
abstract type AMD_A10_PRO_7_9700B_APU <: AMD_A10 end
abstract type AMD_A10_PRO_7_9700E_APU <: AMD_A10 end
abstract type AMD_A10_PRO_7_9730B_APU <: AMD_A10 end
abstract type AMD_A12_PRO_6_8800B_APU <: AMD_A12 end
abstract type AMD_A12_PRO_6_8830B_APU <: AMD_A12 end
abstract type AMD_A12_PRO_6_8870_APU <: AMD_A12 end
abstract type AMD_A12_PRO_6_8870E_APU <: AMD_A12 end
abstract type AMD_A12_PRO_7_9800_APU <: AMD_A12 end
abstract type AMD_A12_PRO_7_9800B_APU <: AMD_A12 end
abstract type AMD_A12_PRO_7_9800E_APU <: AMD_A12 end
abstract type AMD_A12_PRO_7_9830B_APU <: AMD_A12 end
abstract type AMD_A4_PRO_6_8350B_APU <: AMD_A4 end
abstract type AMD_A4_PRO_7_4350B_APU <: AMD_A4 end
abstract type AMD_A4_PRO_7_5350B_APU <: AMD_A4 end
abstract type AMD_A6_PRO_6_8500B_APU <: AMD_A6 end
abstract type AMD_A6_PRO_6_8530B_APU <: AMD_A6 end
abstract type AMD_A6_PRO_6_8550B_APU <: AMD_A6 end
abstract type AMD_A6_PRO_6_8570_APU <: AMD_A6 end
abstract type AMD_A6_PRO_6_8570E_APU <: AMD_A6 end
abstract type AMD_A6_PRO_7_7350B_APU <: AMD_A6 end
abstract type AMD_A6_PRO_7_8350B_APU <: AMD_A6 end
abstract type AMD_A6_PRO_7_9500_APU <: AMD_A6 end
abstract type AMD_A6_PRO_7_9500B_APU <: AMD_A6 end
abstract type AMD_A6_PRO_7_9500E_APU <: AMD_A6 end
abstract type AMD_A8_PRO_6_8600B_APU <: AMD_A8 end
abstract type AMD_A8_PRO_6_8650B_APU <: AMD_A8 end
abstract type AMD_A8_PRO_7_9600_APU <: AMD_A8 end
abstract type AMD_A8_PRO_7_9600B_APU <: AMD_A8 end
abstract type AMD_A8_PRO_7_9630B <: AMD_A8 end
abstract type AMDAthlon_200GE <: AMDAthlon_Vega end
abstract type AMDAthlon_220GE <: AMDAthlon_Vega end
abstract type AMDAthlon_240GE <: AMDAthlon_Vega end
abstract type AMDAthlon_300GE <: AMDAthlon_Vega end
abstract type AMDAthlon_300U <: AMDAthlon_Vega end
abstract type AMDAthlon_320GE <: AMDAthlon_Vega end
abstract type AMDAthlon_5150_APU <: AMDAthlon_APU end
abstract type AMDAthlon_5350_APU <: AMDAthlon_APU end
abstract type AMDAthlon_5370_APU <: AMDAthlon_APU end
abstract type AMDAthlon_7_X4_940 <: AMDAthlon_X4 end
abstract type AMDAthlon_7_X4_950 <: AMDAthlon_X4 end
abstract type AMDAthlon_7_X4_970 <: AMDAthlon_X4 end
abstract type AMDAthlon_Gold_3150C <: AMDAthlon end
abstract type AMDAthlon_Gold_3150G <: AMDAthlon_3000G end
abstract type AMDAthlon_Gold_3150GE <: AMDAthlon_3000G end
abstract type AMDAthlon_Gold_3150U <: AMDAthlon end
abstract type AMDAthlon_Gold_PRO_3150G <: AMDAthlon_PRO_3000 end
abstract type AMDAthlon_Gold_PRO_3150GE <: AMDAthlon_PRO_3000 end
abstract type AMDAthlon_PRO_200GE <: AMDAthlon_PRO_Vega end
abstract type AMDAthlon_PRO_200U <: AMDAthlon_PRO_Vega end
abstract type AMDAthlon_PRO_300GE <: AMDAthlon_PRO_Vega end
abstract type AMDAthlon_PRO_300U <: AMDAthlon_PRO_Vega end
abstract type AMDAthlon_PRO_3045B <: AMDAthlon_PRO end
abstract type AMDAthlon_PRO_3145B <: AMDAthlon_PRO end
abstract type AMDAthlon_Silver_3050C <: AMDAthlon end
abstract type AMDAthlon_Silver_3050e <: AMDAthlon end
abstract type AMDAthlon_Silver_3050GE <: AMDAthlon_3000G end
abstract type AMDAthlon_Silver_3050U <: AMDAthlon end
abstract type AMDAthlon_Silver_PRO_3125GE <: AMDAthlon_PRO_3000 end
abstract type AMDEPYC_7232P <: AMDEPYC_7002 end
abstract type AMDEPYC_7251 <: AMDEPYC_7001 end
abstract type AMDEPYC_7252 <: AMDEPYC_7002 end
abstract type AMDEPYC_7261 <: AMDEPYC_7001 end
abstract type AMDEPYC_7262 <: AMDEPYC_7002 end
abstract type AMDEPYC_7272 <: AMDEPYC_7002 end
abstract type AMDEPYC_7281 <: AMDEPYC_7001 end
abstract type AMDEPYC_7282 <: AMDEPYC_7002 end
abstract type AMDEPYC_72F3 <: AMDEPYC_7003 end
abstract type AMDEPYC_7301 <: AMDEPYC_7001 end
abstract type AMDEPYC_7302 <: AMDEPYC_7002 end
abstract type AMDEPYC_7302P <: AMDEPYC_7002 end
abstract type AMDEPYC_7313 <: AMDEPYC_7003 end
abstract type AMDEPYC_7313P <: AMDEPYC_7003 end
abstract type AMDEPYC_7343 <: AMDEPYC_7003 end
abstract type AMDEPYC_7351 <: AMDEPYC_7001 end
abstract type AMDEPYC_7351P <: AMDEPYC_7001 end
abstract type AMDEPYC_7352 <: AMDEPYC_7002 end
abstract type AMDEPYC_7371 <: AMDEPYC_7001 end
abstract type AMDEPYC_7373X <: AMDEPYC_7003_VCache end
abstract type AMDEPYC_73F3 <: AMDEPYC_7003 end
abstract type AMDEPYC_7401 <: AMDEPYC_7001 end
abstract type AMDEPYC_7401P <: AMDEPYC_7001 end
abstract type AMDEPYC_7402 <: AMDEPYC_7002 end
abstract type AMDEPYC_7402P <: AMDEPYC_7002 end
abstract type AMDEPYC_7413 <: AMDEPYC_7003 end
abstract type AMDEPYC_7443 <: AMDEPYC_7003 end
abstract type AMDEPYC_7443P <: AMDEPYC_7003 end
abstract type AMDEPYC_7451 <: AMDEPYC_7001 end
abstract type AMDEPYC_7452 <: AMDEPYC_7002 end
abstract type AMDEPYC_7453 <: AMDEPYC_7003 end
abstract type AMDEPYC_7473X <: AMDEPYC_7003_VCache end
abstract type AMDEPYC_74F3 <: AMDEPYC_7003 end
abstract type AMDEPYC_7501 <: AMDEPYC_7001 end
abstract type AMDEPYC_7502 <: AMDEPYC_7002 end
abstract type AMDEPYC_7502P <: AMDEPYC_7002 end
abstract type AMDEPYC_7513 <: AMDEPYC_7003 end
abstract type AMDEPYC_7532 <: AMDEPYC_7002 end
abstract type AMDEPYC_7542 <: AMDEPYC_7002 end
abstract type AMDEPYC_7543 <: AMDEPYC_7003 end
abstract type AMDEPYC_7543P <: AMDEPYC_7003 end
abstract type AMDEPYC_7551 <: AMDEPYC_7001 end
abstract type AMDEPYC_7551P <: AMDEPYC_7001 end
abstract type AMDEPYC_7552 <: AMDEPYC_7002 end
abstract type AMDEPYC_7573X <: AMDEPYC_7003_VCache end
abstract type AMDEPYC_75F3 <: AMDEPYC_7003 end
abstract type AMDEPYC_7601 <: AMDEPYC_7001 end
abstract type AMDEPYC_7642 <: AMDEPYC_7002 end
abstract type AMDEPYC_7643 <: AMDEPYC_7003 end
abstract type AMDEPYC_7662 <: AMDEPYC_7002 end
abstract type AMDEPYC_7663 <: AMDEPYC_7003 end
abstract type AMDEPYC_7702 <: AMDEPYC_7002 end
abstract type AMDEPYC_7702P <: AMDEPYC_7002 end
abstract type AMDEPYC_7713 <: AMDEPYC_7003 end
abstract type AMDEPYC_7713P <: AMDEPYC_7003 end
abstract type AMDEPYC_7742 <: AMDEPYC_7002 end
abstract type AMDEPYC_7763 <: AMDEPYC_7003 end
abstract type AMDEPYC_7773X <: AMDEPYC_7003_VCache end
abstract type AMDEPYC_7F32 <: AMDEPYC_7002 end
abstract type AMDEPYC_7F52 <: AMDEPYC_7002 end
abstract type AMDEPYC_7F72 <: AMDEPYC_7002 end
abstract type AMDEPYC_7H12 <: AMDEPYC_7002 end
abstract type AMDOpteron_X2150_APU <: AMDOpteron_X2100 end
abstract type AMDOpteron_X2170 <: AMDOpteron_X2100 end
abstract type AMDRyzen_3_1200 <: AMDRyzen_3 end
abstract type AMDRyzen_3_1300X <: AMDRyzen_3 end
abstract type AMDRyzen_3_2200G <: AMDRyzen_3_Vega end
abstract type AMDRyzen_3_2200GE <: AMDRyzen_3_Vega end
abstract type AMDRyzen_3_2200U <: AMDRyzen_3_Vega end
abstract type AMDRyzen_3_2300U <: AMDRyzen_3_Vega end
abstract type AMDRyzen_3_2300X <: AMDRyzen_3 end
abstract type AMDRyzen_3_3100 <: AMDRyzen_3 end
abstract type AMDRyzen_3_3200G <: AMDRyzen_3_Vega end
abstract type AMDRyzen_3_3200GE <: AMDRyzen_3_Vega end
abstract type AMDRyzen_3_3200U <: AMDRyzen_3_Vega end
abstract type AMDRyzen_3_3250C <: AMDRyzen_3 end
abstract type AMDRyzen_3_3250U <: AMDRyzen_3 end
abstract type AMDRyzen_3_3300U <: AMDRyzen_3_Vega end
abstract type AMDRyzen_3_3300X <: AMDRyzen_3 end
abstract type AMDRyzen_3_3350U <: AMDRyzen_3_Vega end
abstract type AMDRyzen_3_4100 <: AMDRyzen_3 end
abstract type AMDRyzen_3_4300G <: AMDRyzen_3_4000G end
abstract type AMDRyzen_3_4300GE <: AMDRyzen_3_4000G end
abstract type AMDRyzen_3_4300U <: AMDRyzen_3 end
abstract type AMDRyzen_3_5125C <: AMDRyzen_3 end
abstract type AMDRyzen_3_5300G <: AMDRyzen_3_5000G end
abstract type AMDRyzen_3_5300GE <: AMDRyzen_3_5000G end
abstract type AMDRyzen_3_5300U <: AMDRyzen_3 end
abstract type AMDRyzen_3_5400U <: AMDRyzen_3 end
abstract type AMDRyzen_3_5425C <: AMDRyzen_3 end
abstract type AMDRyzen_3_5425U <: AMDRyzen_3 end
abstract type AMDRyzen_3_PRO_1200 <: AMDRyzen_PRO_3 end
abstract type AMDRyzen_3_PRO_1300 <: AMDRyzen_PRO_3 end
abstract type AMDRyzen_3_PRO_2200G <: AMDRyzen_PRO_3_Vega end
abstract type AMDRyzen_3_PRO_2200GE <: AMDRyzen_PRO_3_Vega end
abstract type AMDRyzen_3_PRO_2300U <: AMDRyzen_PRO_3_Vega end
abstract type AMDRyzen_3_PRO_3200G <: AMDRyzen_PRO_3_Vega end
abstract type AMDRyzen_3_PRO_3200GE <: AMDRyzen_PRO_3_Vega end
abstract type AMDRyzen_3_PRO_3300U <: AMDRyzen_PRO_3_Vega end
abstract type AMDRyzen_3_PRO_4350G <: AMDRyzen_PRO_3_4000 end
abstract type AMDRyzen_3_PRO_4350GE <: AMDRyzen_PRO_3_4000 end
abstract type AMDRyzen_3_PRO_4450U <: AMDRyzen_PRO_3_4000 end
abstract type AMDRyzen_3_PRO_5350G <: AMDRyzen_PRO_3_5000 end
abstract type AMDRyzen_3_PRO_5350GE <: AMDRyzen_PRO_3_5000 end
abstract type AMDRyzen_3_PRO_5450U <: AMDRyzen_PRO_3_5000 end
abstract type AMDRyzen_3_PRO_5475U <: AMDRyzen_PRO_3_5000 end
abstract type AMDRyzen_5_1400 <: AMDRyzen_5 end
abstract type AMDRyzen_5_1500X <: AMDRyzen_5 end
abstract type AMDRyzen_5_1600 <: AMDRyzen_5 end
abstract type AMDRyzen_5_1600_AF <: AMDRyzen_5 end
abstract type AMDRyzen_5_1600X <: AMDRyzen_5 end
abstract type AMDRyzen_5_2400G <: AMDRyzen_5_Vega end
abstract type AMDRyzen_5_2400GE <: AMDRyzen_5_Vega end
abstract type AMDRyzen_5_2500U <: AMDRyzen_5_Vega end
abstract type AMDRyzen_5_2500X <: AMDRyzen_5 end
abstract type AMDRyzen_5_2600 <: AMDRyzen_5 end
abstract type AMDRyzen_5_2600E <: AMDRyzen_5 end
abstract type AMDRyzen_5_2600H <: AMDRyzen_5_Vega end
abstract type AMDRyzen_5_2600X <: AMDRyzen_5 end
abstract type AMDRyzen_5_3400G <: AMDRyzen_5_Vega end
abstract type AMDRyzen_5_3400GE <: AMDRyzen_5_Vega end
abstract type AMDRyzen_5_3450U <: AMDRyzen_5_Vega end
abstract type AMDRyzen_5_3500 <: AMDRyzen_5 end
abstract type AMDRyzen_5_3500C <: AMDRyzen_5 end
abstract type AMDRyzen_5_3500U <: AMDRyzen_5_Vega end
abstract type AMDRyzen_5_3550H <: AMDRyzen_5_Vega end
abstract type AMDRyzen_5_3580U <: AMDRyzen_5_Vega_9_Surface end
abstract type AMDRyzen_5_3600 <: AMDRyzen_5 end
abstract type AMDRyzen_5_3600X <: AMDRyzen_5 end
abstract type AMDRyzen_5_3600XT <: AMDRyzen_5 end
abstract type AMDRyzen_5_4500 <: AMDRyzen_5 end
abstract type AMDRyzen_5_4500U <: AMDRyzen_5 end
abstract type AMDRyzen_5_4600G <: AMDRyzen_5_4000G end
abstract type AMDRyzen_5_4600GE <: AMDRyzen_5_4000G end
abstract type AMDRyzen_5_4600H <: AMDRyzen_5 end
abstract type AMDRyzen_5_4600U <: AMDRyzen_5 end
abstract type AMDRyzen_5_4680U <: AMDRyzen_5_Surface end
abstract type AMDRyzen_5_5500 <: AMDRyzen_5 end
abstract type AMDRyzen_5_5500U <: AMDRyzen_5 end
abstract type AMDRyzen_5_5560U <: AMDRyzen_5 end
abstract type AMDRyzen_5_5600 <: AMDRyzen_5 end
abstract type AMDRyzen_5_5600G <: AMDRyzen_5_5000G end
abstract type AMDRyzen_5_5600GE <: AMDRyzen_5_5000G end
abstract type AMDRyzen_5_5600H <: AMDRyzen_5 end
abstract type AMDRyzen_5_5600HS <: AMDRyzen_5 end
abstract type AMDRyzen_5_5600U <: AMDRyzen_5 end
abstract type AMDRyzen_5_5600X <: AMDRyzen_5 end
abstract type AMDRyzen_5_5625C <: AMDRyzen_5 end
abstract type AMDRyzen_5_5625U <: AMDRyzen_5 end
abstract type AMDRyzen_5_6600H <: AMDRyzen_5 end
abstract type AMDRyzen_5_6600HS <: AMDRyzen_5 end
abstract type AMDRyzen_5_6600U <: AMDRyzen_5 end
abstract type AMDRyzen_5_PRO_1500 <: AMDRyzen_PRO_5 end
abstract type AMDRyzen_5_PRO_1600 <: AMDRyzen_PRO_5 end
abstract type AMDRyzen_5_PRO_2400G <: AMDRyzen_PRO_5_Vega end
abstract type AMDRyzen_5_PRO_2400GE <: AMDRyzen_PRO_5_Vega end
abstract type AMDRyzen_5_PRO_2500U <: AMDRyzen_PRO_5_Vega end
abstract type AMDRyzen_5_PRO_2600 <: AMDRyzen_PRO_5 end
abstract type AMDRyzen_5_PRO_3350G <: AMDRyzen_PRO_5_3000 end
abstract type AMDRyzen_5_PRO_3350GE <: AMDRyzen_PRO_5_3000 end
abstract type AMDRyzen_5_PRO_3400G <: AMDRyzen_PRO_5_Vega end
abstract type AMDRyzen_5_PRO_3400GE <: AMDRyzen_PRO_5_Vega end
abstract type AMDRyzen_5_PRO_3500U <: AMDRyzen_PRO_5_Vega end
abstract type AMDRyzen_5_PRO_3600 <: AMDRyzen_PRO_5 end
abstract type AMDRyzen_5_PRO_4650G <: AMDRyzen_PRO_5_4000 end
abstract type AMDRyzen_5_PRO_4650GE <: AMDRyzen_PRO_5_4000 end
abstract type AMDRyzen_5_PRO_4650U <: AMDRyzen_PRO_5_4000 end
abstract type AMDRyzen_5_PRO_5650G <: AMDRyzen_PRO_5_6000 end
abstract type AMDRyzen_5_PRO_5650GE <: AMDRyzen_PRO_5_6000 end
abstract type AMDRyzen_5_PRO_5650U <: AMDRyzen_PRO_5_5000 end
abstract type AMDRyzen_5_PRO_5675U <: AMDRyzen_PRO_5_5000 end
abstract type AMDRyzen_5_PRO_6650H <: AMDRyzen_PRO_5_6000 end
abstract type AMDRyzen_5_PRO_6650HS <: AMDRyzen_PRO_5_6000 end
abstract type AMDRyzen_5_PRO_6650U <: AMDRyzen_PRO_5_6000 end
abstract type AMDRyzen_7_1700 <: AMDRyzen_7 end
abstract type AMDRyzen_7_1700X <: AMDRyzen_7 end
abstract type AMDRyzen_7_1800X <: AMDRyzen_7 end
abstract type AMDRyzen_7_2700 <: AMDRyzen_7 end
abstract type AMDRyzen_7_2700E <: AMDRyzen_7 end
abstract type AMDRyzen_7_2700U <: AMDRyzen_7_RXVega end
abstract type AMDRyzen_7_2700X <: AMDRyzen_7 end
abstract type AMDRyzen_7_2800H <: AMDRyzen_7_RXVega end
abstract type AMDRyzen_7_3700C <: AMDRyzen_7 end
abstract type AMDRyzen_7_3700U <: AMDRyzen_7_RXVega end
abstract type AMDRyzen_7_3700X <: AMDRyzen_7 end
abstract type AMDRyzen_7_3750H <: AMDRyzen_7_RXVega end
abstract type AMDRyzen_7_3780U <: AMDRyzen_7_RXVega11_Surface end
abstract type AMDRyzen_7_3800X <: AMDRyzen_7 end
abstract type AMDRyzen_7_3800XT <: AMDRyzen_7 end
abstract type AMDRyzen_7_4700G <: AMDRyzen_7_4000G end
abstract type AMDRyzen_7_4700GE <: AMDRyzen_7_4000G end
abstract type AMDRyzen_7_4700U <: AMDRyzen_7 end
abstract type AMDRyzen_7_4800H <: AMDRyzen_7 end
abstract type AMDRyzen_7_4800HS <: AMDRyzen_7 end
abstract type AMDRyzen_7_4800U <: AMDRyzen_7 end
abstract type AMDRyzen_7_4980U <: AMDRyzen_7_Surface end
abstract type AMDRyzen_7_5700G <: AMDRyzen_7_5000G end
abstract type AMDRyzen_7_5700GE <: AMDRyzen_7_5000G end
abstract type AMDRyzen_7_5700U <: AMDRyzen_7 end
abstract type AMDRyzen_7_5700X <: AMDRyzen_7 end
abstract type AMDRyzen_7_5800 <: AMDRyzen_7 end
abstract type AMDRyzen_7_5800H <: AMDRyzen_7 end
abstract type AMDRyzen_7_5800HS <: AMDRyzen_7 end
abstract type AMDRyzen_7_5800U <: AMDRyzen_7 end
abstract type AMDRyzen_7_5800X <: AMDRyzen_7 end
abstract type AMDRyzen_7_5800X3D <: AMDRyzen_7 end
abstract type AMDRyzen_7_5825C <: AMDRyzen_7 end
abstract type AMDRyzen_7_5825U <: AMDRyzen_7 end
abstract type AMDRyzen_7_6800H <: AMDRyzen_7 end
abstract type AMDRyzen_7_6800HS <: AMDRyzen_7 end
abstract type AMDRyzen_7_6800U <: AMDRyzen_7 end
abstract type AMDRyzen_7_PRO_1700 <: AMDRyzen_PRO_7 end
abstract type AMDRyzen_7_PRO_1700X <: AMDRyzen_PRO_7 end
abstract type AMDRyzen_7_PRO_2700 <: AMDRyzen_PRO_7 end
abstract type AMDRyzen_7_PRO_2700U <: AMDRyzen_PRO_7_Vega end
abstract type AMDRyzen_7_PRO_2700X <: AMDRyzen_PRO_7 end
abstract type AMDRyzen_7_PRO_3700 <: AMDRyzen_PRO_7 end
abstract type AMDRyzen_7_PRO_3700U <: AMDRyzen_PRO_7_Vega end
abstract type AMDRyzen_7_PRO_4750G <: AMDRyzen_PRO_7_4000 end
abstract type AMDRyzen_7_PRO_4750GE <: AMDRyzen_PRO_7_4000 end
abstract type AMDRyzen_7_PRO_4750U <: AMDRyzen_PRO_7_4000 end
abstract type AMDRyzen_7_PRO_5750G <: AMDRyzen_PRO_7_5000 end
abstract type AMDRyzen_7_PRO_5750GE <: AMDRyzen_PRO_7_5000 end
abstract type AMDRyzen_7_PRO_5850U <: AMDRyzen_PRO_7_5000 end
abstract type AMDRyzen_7_PRO_5875U <: AMDRyzen_PRO_7_5000 end
abstract type AMDRyzen_7_PRO_6850H <: AMDRyzen_PRO_7_6000 end
abstract type AMDRyzen_7_PRO_6850HS <: AMDRyzen_PRO_7_6000 end
abstract type AMDRyzen_7_PRO_6850U <: AMDRyzen_PRO_7_6000 end
abstract type AMDRyzen_9_3900 <: AMDRyzen_9 end
abstract type AMDRyzen_9_3900X <: AMDRyzen_9 end
abstract type AMDRyzen_9_3900XT <: AMDRyzen_9 end
abstract type AMDRyzen_9_3950X <: AMDRyzen_9 end
abstract type AMDRyzen_9_4900H <: AMDRyzen_9 end
abstract type AMDRyzen_9_4900HS <: AMDRyzen_9 end
abstract type AMDRyzen_9_5900 <: AMDRyzen_9 end
abstract type AMDRyzen_9_5900HS <: AMDRyzen_9 end
abstract type AMDRyzen_9_5900HX <: AMDRyzen_9 end
abstract type AMDRyzen_9_5900X <: AMDRyzen_9 end
abstract type AMDRyzen_9_5950X <: AMDRyzen_9 end
abstract type AMDRyzen_9_5980HS <: AMDRyzen_9 end
abstract type AMDRyzen_9_5980HX <: AMDRyzen_9 end
abstract type AMDRyzen_9_6900HS <: AMDRyzen_9 end
abstract type AMDRyzen_9_6900HX <: AMDRyzen_9 end
abstract type AMDRyzen_9_6980HS <: AMDRyzen_9 end
abstract type AMDRyzen_9_6980HX <: AMDRyzen_9 end
abstract type AMDRyzen_9_PRO_3900 <: AMDRyzen_PRO_9 end
abstract type AMDRyzen_9_PRO_6950H <: AMDRyzen_PRO_9_6000 end
abstract type AMDRyzen_9_PRO_6950HS <: AMDRyzen_PRO_9_6000 end
abstract type AMDRyzen_Threadripper_1900X <: AMDRyzen_Threadripper end
abstract type AMDRyzen_Threadripper_1920X <: AMDRyzen_Threadripper end
abstract type AMDRyzen_Threadripper_1950X <: AMDRyzen_Threadripper end
abstract type AMDRyzen_Threadripper_2920X <: AMDRyzen_Threadripper end
abstract type AMDRyzen_Threadripper_2950X <: AMDRyzen_Threadripper end
abstract type AMDRyzen_Threadripper_2970WX <: AMDRyzen_Threadripper end
abstract type AMDRyzen_Threadripper_2990WX <: AMDRyzen_Threadripper end
abstract type AMDRyzen_Threadripper_3960X <: AMDRyzen_Threadripper end
abstract type AMDRyzen_Threadripper_3970X <: AMDRyzen_Threadripper end
abstract type AMDRyzen_Threadripper_3990X <: AMDRyzen_Threadripper end
abstract type AMDRyzen_Threadripper_PRO_3945WX <: AMDRyzen_PRO_Threadripper end
abstract type AMDRyzen_Threadripper_PRO_3955WX <: AMDRyzen_PRO_Threadripper end
abstract type AMDRyzen_Threadripper_PRO_3975WX <: AMDRyzen_PRO_Threadripper end
abstract type AMDRyzen_Threadripper_PRO_3995WX <: AMDRyzen_PRO_Threadripper end
abstract type AMDRyzen_Threadripper_PRO_5945WX <: AMDRyzen_PRO_Threadripper_5000_WX end
abstract type AMDRyzen_Threadripper_PRO_5955WX <: AMDRyzen_PRO_Threadripper_5000_WX end
abstract type AMDRyzen_Threadripper_PRO_5965WX <: AMDRyzen_PRO_Threadripper_5000_WX end
abstract type AMDRyzen_Threadripper_PRO_5975WX <: AMDRyzen_PRO_Threadripper_5000_WX end
abstract type AMDRyzen_Threadripper_PRO_5995WX <: AMDRyzen_PRO_Threadripper_5000_WX end
abstract type AMDSempron_2650_APU <: AMDSempron_Dual_APU end
abstract type AMDSempron_3850_APU <: AMDSempron_Quad_APU end