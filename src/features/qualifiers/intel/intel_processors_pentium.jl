# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

## Pentium processors

abstract type IntelPentium <: IntelProcessor end

abstract type IntelPentium_Gold <: IntelPentium end
abstract type IntelPentium_Silver <: IntelPentium end
abstract type IntelPentium_D <: IntelPentium end
abstract type IntelPentium_G <: IntelPentium end
abstract type IntelPentium_J <: IntelPentium end
abstract type IntelPentium_N <: IntelPentium end
abstract type IntelPentium_6800 <: IntelPentium end
abstract type IntelPentium_4000 <: IntelPentium end
abstract type IntelPentium_3000 <: IntelPentium end
abstract type IntelPentium_2000 <: IntelPentium end
abstract type IntelPentium_1000 <: IntelPentium end

export IntelPentium,
       IntelPentium_1000,
       IntelPentium_2000,
       IntelPentium_3000,
       IntelPentium_4000,
       IntelPentium_6800,
       IntelPentium_D,
       IntelPentium_G,
       IntelPentium_Gold,
       IntelPentium_J,
       IntelPentium_N,
       IntelPentium_Silver

# Pentium processor models

abstract type IntelPentium_N3700 <: IntelPentium_N end; export IntelPentium_N3700
abstract type IntelPentium_G4600 <: IntelPentium_G end; export IntelPentium_G4600
abstract type IntelPentium_G4600T <: IntelPentium_G end; export IntelPentium_G4600T
abstract type IntelPentium_G4620 <: IntelPentium_G end; export IntelPentium_G4620
abstract type IntelPentium_4415Y <: IntelPentium_Gold end; export IntelPentium_4415Y
abstract type IntelPentium_4410Y <: IntelPentium_Gold end; export IntelPentium_4410Y
abstract type IntelPentium_4417U <: IntelPentium_Gold end; export IntelPentium_4417U
abstract type IntelPentium_4415U <: IntelPentium_Gold end; export IntelPentium_4415U
abstract type IntelPentium_G4560 <: IntelPentium_G end; export IntelPentium_G4560
abstract type IntelPentium_G4560T <: IntelPentium_G end; export IntelPentium_G4560T
abstract type IntelPentium_G4500 <: IntelPentium_G end; export IntelPentium_G4500
abstract type IntelPentium_G4500T <: IntelPentium_G end; export IntelPentium_G4500T
abstract type IntelPentium_G4520 <: IntelPentium_G end; export IntelPentium_G4520
abstract type IntelPentium_4405Y <: IntelPentium_4000 end; export IntelPentium_4405Y
abstract type IntelPentium_G4400TE <: IntelPentium_G end; export IntelPentium_G4400TE
abstract type IntelPentium_4405U <: IntelPentium_4000 end; export IntelPentium_4405U
abstract type IntelPentium_G4400 <: IntelPentium_G end; export IntelPentium_G4400
abstract type IntelPentium_G4400T <: IntelPentium_G end; export IntelPentium_G4400T
abstract type IntelPentium_N4200E <: IntelPentium_N end; export IntelPentium_N4200E
abstract type IntelPentium_J4205 <: IntelPentium_J end; export IntelPentium_J4205
abstract type IntelPentium_N4200 <: IntelPentium_N end; export IntelPentium_N4200
abstract type IntelPentium_3825U <: IntelPentium_3000 end; export IntelPentium_3825U
abstract type IntelPentium_3805U <: IntelPentium_3000 end; export IntelPentium_3805U
abstract type IntelPentium_G3260 <: IntelPentium_G end; export IntelPentium_G3260
abstract type IntelPentium_G3260T <: IntelPentium_G end; export IntelPentium_G3260T
abstract type IntelPentium_G3460T <: IntelPentium_G end; export IntelPentium_G3460T
abstract type IntelPentium_G3470 <: IntelPentium_G end; export IntelPentium_G3470
abstract type IntelPentium_G3250 <: IntelPentium_G end; export IntelPentium_G3250
abstract type IntelPentium_G3250T <: IntelPentium_G end; export IntelPentium_G3250T
abstract type IntelPentium_G3450T <: IntelPentium_G end; export IntelPentium_G3450T
abstract type IntelPentium_G3460 <: IntelPentium_G end; export IntelPentium_G3460
abstract type IntelPentium_G3258 <: IntelPentium_G end; export IntelPentium_G3258
abstract type IntelPentium_G3240 <: IntelPentium_G end; export IntelPentium_G3240
abstract type IntelPentium_G3240T <: IntelPentium_G end; export IntelPentium_G3240T
abstract type IntelPentium_G3440 <: IntelPentium_G end; export IntelPentium_G3440
abstract type IntelPentium_G3440T <: IntelPentium_G end; export IntelPentium_G3440T
abstract type IntelPentium_G3450 <: IntelPentium_G end; export IntelPentium_G3450
abstract type IntelPentium_3560M <: IntelPentium_3000 end; export IntelPentium_3560M
abstract type IntelPentium_3558U <: IntelPentium_3000 end; export IntelPentium_3558U
abstract type IntelPentium_3561Y <: IntelPentium_3000 end; export IntelPentium_3561Y
abstract type IntelPentium_3550M <: IntelPentium_3000 end; export IntelPentium_3550M
abstract type IntelPentium_3556U <: IntelPentium_3000 end; export IntelPentium_3556U
abstract type IntelPentium_3560Y <: IntelPentium_3000 end; export IntelPentium_3560Y
abstract type IntelPentium_G3220 <: IntelPentium_G end; export IntelPentium_G3220
abstract type IntelPentium_G3220T <: IntelPentium_G end; export IntelPentium_G3220T
abstract type IntelPentium_G3320TE <: IntelPentium_G end; export IntelPentium_G3320TE
abstract type IntelPentium_G3420 <: IntelPentium_G end; export IntelPentium_G3420
abstract type IntelPentium_G3420T <: IntelPentium_G end; export IntelPentium_G3420T
abstract type IntelPentium_G3430 <: IntelPentium_G end; export IntelPentium_G3430
abstract type IntelPentium_A1018 <: IntelPentium_1000 end; export IntelPentium_A1018
abstract type IntelPentium_2127U <: IntelPentium_2000 end; export IntelPentium_2127U
abstract type IntelPentium_G2030 <: IntelPentium_G end; export IntelPentium_G2030
abstract type IntelPentium_G2030T <: IntelPentium_G end; export IntelPentium_G2030T
abstract type IntelPentium_G2120T <: IntelPentium_G end; export IntelPentium_G2120T
abstract type IntelPentium_G2140 <: IntelPentium_G end; export IntelPentium_G2140
abstract type IntelPentium_2030M <: IntelPentium_2000 end; export IntelPentium_2030M
abstract type IntelPentium_G2010 <: IntelPentium_G end; export IntelPentium_G2010
abstract type IntelPentium_G2020 <: IntelPentium_G end; export IntelPentium_G2020
abstract type IntelPentium_G2020T <: IntelPentium_G end; export IntelPentium_G2020T
abstract type IntelPentium_G2130 <: IntelPentium_G end; export IntelPentium_G2130
abstract type IntelPentium_2129Y <: IntelPentium_2000 end; export IntelPentium_2129Y
abstract type IntelPentium_2020M <: IntelPentium_2000 end; export IntelPentium_2020M
abstract type IntelPentium_2117U <: IntelPentium_2000 end; export IntelPentium_2117U
abstract type IntelPentium_G2100T <: IntelPentium_G end; export IntelPentium_G2100T
abstract type IntelPentium_G2120 <: IntelPentium_G end; export IntelPentium_G2120
abstract type IntelPentium_A1020 <: IntelPentium_1000 end; export IntelPentium_A1020
abstract type IntelPentium_N3540 <: IntelPentium_N end; export IntelPentium_N3540
abstract type IntelPentium_N3530 <: IntelPentium_N end; export IntelPentium_N3530
abstract type IntelPentium_J2900 <: IntelPentium_J end; export IntelPentium_J2900
abstract type IntelPentium_N3520 <: IntelPentium_N end; export IntelPentium_N3520
abstract type IntelPentium_J2850 <: IntelPentium_J end; export IntelPentium_J2850
abstract type IntelPentium_N3510 <: IntelPentium_N end; export IntelPentium_N3510
abstract type IntelPentium_8500 <: IntelPentium_Gold end; export IntelPentium_8500
abstract type IntelPentium_8505 <: IntelPentium_Gold end; export IntelPentium_8505
abstract type IntelPentium_G7400 <: IntelPentium_Gold end; export IntelPentium_G7400
abstract type IntelPentium_G7400E <: IntelPentium_Gold end; export IntelPentium_G7400E
abstract type IntelPentium_G7400T <: IntelPentium_Gold end; export IntelPentium_G7400T
abstract type IntelPentium_G7400TE <: IntelPentium_Gold end; export IntelPentium_G7400TE
abstract type IntelPentium_G6405 <: IntelPentium_Gold end; export IntelPentium_G6405
abstract type IntelPentium_G6405T <: IntelPentium_Gold end; export IntelPentium_G6405T
abstract type IntelPentium_G6505 <: IntelPentium_Gold end; export IntelPentium_G6505
abstract type IntelPentium_G6505T <: IntelPentium_Gold end; export IntelPentium_G6505T
abstract type IntelPentium_G6605 <: IntelPentium_Gold end; export IntelPentium_G6605
abstract type IntelPentium_6500Y <: IntelPentium_Gold end; export IntelPentium_6500Y
abstract type IntelPentium_7505 <: IntelPentium_Gold end; export IntelPentium_7505
abstract type IntelPentium_G6400 <: IntelPentium_Gold end; export IntelPentium_G6400
abstract type IntelPentium_G6400E <: IntelPentium_Gold end; export IntelPentium_G6400E
abstract type IntelPentium_G6400T <: IntelPentium_Gold end; export IntelPentium_G6400T
abstract type IntelPentium_G6400TE <: IntelPentium_Gold end; export IntelPentium_G6400TE
abstract type IntelPentium_G6500 <: IntelPentium_Gold end; export IntelPentium_G6500
abstract type IntelPentium_G6500T <: IntelPentium_Gold end; export IntelPentium_G6500T
abstract type IntelPentium_G6600 <: IntelPentium_Gold end; export IntelPentium_G6600
abstract type IntelPentium_6405U <: IntelPentium_Gold end; export IntelPentium_6405U
abstract type IntelPentium_G5420 <: IntelPentium_Gold end; export IntelPentium_G5420
abstract type IntelPentium_G5420T <: IntelPentium_Gold end; export IntelPentium_G5420T
abstract type IntelPentium_G5600T <: IntelPentium_Gold end; export IntelPentium_G5600T
abstract type IntelPentium_G5620 <: IntelPentium_Gold end; export IntelPentium_G5620
abstract type IntelPentium_4425Y <: IntelPentium_Gold end; export IntelPentium_4425Y
abstract type IntelPentium_G5400 <: IntelPentium_Gold end; export IntelPentium_G5400
abstract type IntelPentium_G5400T <: IntelPentium_Gold end; export IntelPentium_G5400T
abstract type IntelPentium_G5500 <: IntelPentium_Gold end; export IntelPentium_G5500
abstract type IntelPentium_G5500T <: IntelPentium_Gold end; export IntelPentium_G5500T
abstract type IntelPentium_N6000 <: IntelPentium_Silver end; export IntelPentium_N6000
abstract type IntelPentium_N6005 <: IntelPentium_Silver end; export IntelPentium_N6005
abstract type IntelPentium_J5040 <: IntelPentium_Silver end; export IntelPentium_J5040
abstract type IntelPentium_N5030 <: IntelPentium_Silver end; export IntelPentium_N5030
abstract type IntelPentium_J5005 <: IntelPentium_Silver end; export IntelPentium_J5005
abstract type IntelPentium_N5000 <: IntelPentium_Silver end; export IntelPentium_N5000
abstract type IntelPentium_D1519 <: IntelPentium_D end; export IntelPentium_D1519
abstract type IntelPentium_D1507 <: IntelPentium_D end; export IntelPentium_D1507
abstract type IntelPentium_D1508 <: IntelPentium_D end; export IntelPentium_D1508
abstract type IntelPentium_D1509 <: IntelPentium_D end; export IntelPentium_D1509
abstract type IntelPentium_D1517 <: IntelPentium_D end; export IntelPentium_D1517
abstract type IntelPentium_J6426 <: IntelPentium_J end; export IntelPentium_J6426
abstract type IntelPentium_J3710 <: IntelPentium_J end; export IntelPentium_J3710
abstract type IntelPentium_N6415 <: IntelPentium_N end; export IntelPentium_N6415
abstract type IntelPentium_N3710 <: IntelPentium_N end; export IntelPentium_N3710
abstract type IntelPentium_6805 <: IntelPentium_6800 end; export IntelPentium_6805
abstract type IntelPentium_1405V2 <: IntelPentium_1000 end; export IntelPentium_1405V2
abstract type IntelPentium_1405 <: IntelPentium_1000 end; export IntelPentium_1405
abstract type IntelPentium_5405U <: IntelPentium_Gold end; export IntelPentium_5405U
