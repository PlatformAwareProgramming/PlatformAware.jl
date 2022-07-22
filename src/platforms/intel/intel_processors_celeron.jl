# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

## Celeron processors

abstract type IntelCeleron <: IntelProcessor end

abstract type IntelCeleron_G <: IntelCeleron end
abstract type IntelCeleron_J <: IntelCeleron end
abstract type IntelCeleron_N <: IntelCeleron end
abstract type IntelCeleron_7000 <: IntelCeleron end
abstract type IntelCeleron_6000 <: IntelCeleron end
abstract type IntelCeleron_5000 <: IntelCeleron end
abstract type IntelCeleron_4000 <: IntelCeleron end
abstract type IntelCeleron_3000 <: IntelCeleron end
abstract type IntelCeleron_2000 <: IntelCeleron end
abstract type IntelCeleron_1000 <: IntelCeleron end

export IntelCeleron, 
        IntelCeleron_1000, 
        IntelCeleron_2000, 
        IntelCeleron_3000, 
        IntelCeleron_4000, 
        IntelCeleron_5000,
        IntelCeleron_6000, 
        IntelCeleron_7000, 
        IntelCeleron_G, 
        IntelCeleron_J,
        IntelCeleron_N

# Celeron processor models

abstract type IntelCeleron_7305 <: IntelCeleron_7000 end; export IntelCeleron_7305
abstract type IntelCeleron_6305 <: IntelCeleron_6000 end; export IntelCeleron_6305
abstract type IntelCeleron_4305U <: IntelCeleron_4000 end; export IntelCeleron_4305U
abstract type IntelCeleron_G6900 <: IntelCeleron_G end; export IntelCeleron_G6900
abstract type IntelCeleron_G6900E <: IntelCeleron_G end; export IntelCeleron_G6900E
abstract type IntelCeleron_G6900T <: IntelCeleron_G end; export IntelCeleron_G6900T
abstract type IntelCeleron_G6900TE <: IntelCeleron_G end; export IntelCeleron_G6900TE
abstract type IntelCeleron_G5905 <: IntelCeleron_G end; export IntelCeleron_G5905
abstract type IntelCeleron_G5905T <: IntelCeleron_G end; export IntelCeleron_G5905T
abstract type IntelCeleron_G5925 <: IntelCeleron_G end; export IntelCeleron_G5925
abstract type IntelCeleron_G5900 <: IntelCeleron_G end; export IntelCeleron_G5900
abstract type IntelCeleron_G5900E <: IntelCeleron_G end; export IntelCeleron_G5900E
abstract type IntelCeleron_G5900T <: IntelCeleron_G end; export IntelCeleron_G5900T
abstract type IntelCeleron_G5900TE <: IntelCeleron_G end; export IntelCeleron_G5900TE
abstract type IntelCeleron_G5920 <: IntelCeleron_G end; export IntelCeleron_G5920
abstract type IntelCeleron_G4930E <: IntelCeleron_G end; export IntelCeleron_G4930E
abstract type IntelCeleron_G4932E <: IntelCeleron_G end; export IntelCeleron_G4932E
abstract type IntelCeleron_G4930 <: IntelCeleron_G end; export IntelCeleron_G4930
abstract type IntelCeleron_G4930T <: IntelCeleron_G end; export IntelCeleron_G4930T
abstract type IntelCeleron_G4950 <: IntelCeleron_G end; export IntelCeleron_G4950
abstract type IntelCeleron_G4900 <: IntelCeleron_G end; export IntelCeleron_G4900
abstract type IntelCeleron_G4900T <: IntelCeleron_G end; export IntelCeleron_G4900T
abstract type IntelCeleron_G4920 <: IntelCeleron_G end; export IntelCeleron_G4920
abstract type IntelCeleron_G3930E <: IntelCeleron_G end; export IntelCeleron_G3930E
abstract type IntelCeleron_G3930TE <: IntelCeleron_G end; export IntelCeleron_G3930TE
abstract type IntelCeleron_G3930 <: IntelCeleron_G end; export IntelCeleron_G3930
abstract type IntelCeleron_G3930T <: IntelCeleron_G end; export IntelCeleron_G3930T
abstract type IntelCeleron_G3950 <: IntelCeleron_G end; export IntelCeleron_G3950
abstract type IntelCeleron_G3900E <: IntelCeleron_G end; export IntelCeleron_G3900E
abstract type IntelCeleron_G3902E <: IntelCeleron_G end; export IntelCeleron_G3902E
abstract type IntelCeleron_G3900 <: IntelCeleron_G end; export IntelCeleron_G3900
abstract type IntelCeleron_G3900T <: IntelCeleron_G end; export IntelCeleron_G3900T
abstract type IntelCeleron_G3900TE <: IntelCeleron_G end; export IntelCeleron_G3900TE
abstract type IntelCeleron_G3920 <: IntelCeleron_G end; export IntelCeleron_G3920
abstract type IntelCeleron_G1840 <: IntelCeleron_G end; export IntelCeleron_G1840
abstract type IntelCeleron_G1840T <: IntelCeleron_G end; export IntelCeleron_G1840T
abstract type IntelCeleron_G1850 <: IntelCeleron_G end; export IntelCeleron_G1850
abstract type IntelCeleron_G1820TE <: IntelCeleron_G end; export IntelCeleron_G1820TE
abstract type IntelCeleron_G1820 <: IntelCeleron_G end; export IntelCeleron_G1820
abstract type IntelCeleron_G1820T <: IntelCeleron_G end; export IntelCeleron_G1820T
abstract type IntelCeleron_G1830 <: IntelCeleron_G end; export IntelCeleron_G1830
abstract type IntelCeleron_G1620T <: IntelCeleron_G end; export IntelCeleron_G1620T
abstract type IntelCeleron_G1630 <: IntelCeleron_G end; export IntelCeleron_G1630
abstract type IntelCeleron_G1610 <: IntelCeleron_G end; export IntelCeleron_G1610
abstract type IntelCeleron_G1610T <: IntelCeleron_G end; export IntelCeleron_G1610T
abstract type IntelCeleron_G1620 <: IntelCeleron_G end; export IntelCeleron_G1620
abstract type IntelCeleron_J6412 <: IntelCeleron_J end; export IntelCeleron_J6412
abstract type IntelCeleron_J6413 <: IntelCeleron_J end; export IntelCeleron_J6413
abstract type IntelCeleron_J4025 <: IntelCeleron_J end; export IntelCeleron_J4025
abstract type IntelCeleron_J4125 <: IntelCeleron_J end; export IntelCeleron_J4125
abstract type IntelCeleron_J3355E <: IntelCeleron_J end; export IntelCeleron_J3355E
abstract type IntelCeleron_J3455E <: IntelCeleron_J end; export IntelCeleron_J3455E
abstract type IntelCeleron_J4005 <: IntelCeleron_J end; export IntelCeleron_J4005
abstract type IntelCeleron_J4105 <: IntelCeleron_J end; export IntelCeleron_J4105
abstract type IntelCeleron_J3355 <: IntelCeleron_J end; export IntelCeleron_J3355
abstract type IntelCeleron_J3455 <: IntelCeleron_J end; export IntelCeleron_J3455
abstract type IntelCeleron_J3060 <: IntelCeleron_J end; export IntelCeleron_J3060
abstract type IntelCeleron_J3160 <: IntelCeleron_J end; export IntelCeleron_J3160
abstract type IntelCeleron_J1800 <: IntelCeleron_J end; export IntelCeleron_J1800
abstract type IntelCeleron_J1900 <: IntelCeleron_J end; export IntelCeleron_J1900
abstract type IntelCeleron_J1750 <: IntelCeleron_J end; export IntelCeleron_J1750
abstract type IntelCeleron_J1850 <: IntelCeleron_J end; export IntelCeleron_J1850
abstract type IntelCeleron_N6210 <: IntelCeleron_N end; export IntelCeleron_N6210
abstract type IntelCeleron_N4500 <: IntelCeleron_N end; export IntelCeleron_N4500
abstract type IntelCeleron_N4505 <: IntelCeleron_N end; export IntelCeleron_N4505
abstract type IntelCeleron_N5100 <: IntelCeleron_N end; export IntelCeleron_N5100
abstract type IntelCeleron_N5105 <: IntelCeleron_N end; export IntelCeleron_N5105
abstract type IntelCeleron_N6211 <: IntelCeleron_N end; export IntelCeleron_N6211
abstract type IntelCeleron_N4020 <: IntelCeleron_N end; export IntelCeleron_N4020
abstract type IntelCeleron_N4120 <: IntelCeleron_N end; export IntelCeleron_N4120
abstract type IntelCeleron_N3350E <: IntelCeleron_N end; export IntelCeleron_N3350E
abstract type IntelCeleron_N4000 <: IntelCeleron_N end; export IntelCeleron_N4000
abstract type IntelCeleron_N4100 <: IntelCeleron_N end; export IntelCeleron_N4100
abstract type IntelCeleron_N3350 <: IntelCeleron_N end; export IntelCeleron_N3350
abstract type IntelCeleron_N3450 <: IntelCeleron_N end; export IntelCeleron_N3450
abstract type IntelCeleron_N3010 <: IntelCeleron_N end; export IntelCeleron_N3010
abstract type IntelCeleron_N3060 <: IntelCeleron_N end; export IntelCeleron_N3060
abstract type IntelCeleron_N3160 <: IntelCeleron_N end; export IntelCeleron_N3160
abstract type IntelCeleron_N3000 <: IntelCeleron_N end; export IntelCeleron_N3000
abstract type IntelCeleron_N3050 <: IntelCeleron_N end; export IntelCeleron_N3050
abstract type IntelCeleron_N3150 <: IntelCeleron_N end; export IntelCeleron_N3150
abstract type IntelCeleron_N2808 <: IntelCeleron_N end; export IntelCeleron_N2808
abstract type IntelCeleron_N2840 <: IntelCeleron_N end; export IntelCeleron_N2840
abstract type IntelCeleron_N2940 <: IntelCeleron_N end; export IntelCeleron_N2940
abstract type IntelCeleron_N2807 <: IntelCeleron_N end; export IntelCeleron_N2807
abstract type IntelCeleron_N2830 <: IntelCeleron_N end; export IntelCeleron_N2830
abstract type IntelCeleron_N2930 <: IntelCeleron_N end; export IntelCeleron_N2930
abstract type IntelCeleron_N2806 <: IntelCeleron_N end; export IntelCeleron_N2806
abstract type IntelCeleron_N2815 <: IntelCeleron_N end; export IntelCeleron_N2815
abstract type IntelCeleron_N2820 <: IntelCeleron_N end; export IntelCeleron_N2820
abstract type IntelCeleron_N2920 <: IntelCeleron_N end; export IntelCeleron_N2920
abstract type IntelCeleron_N2805 <: IntelCeleron_N end; export IntelCeleron_N2805
abstract type IntelCeleron_N2810 <: IntelCeleron_N end; export IntelCeleron_N2810
abstract type IntelCeleron_N2910 <: IntelCeleron_N end; export IntelCeleron_N2910
abstract type IntelCeleron_7305E <: IntelCeleron_7000 end; export IntelCeleron_7305E
abstract type IntelCeleron_7300 <: IntelCeleron_7000 end; export IntelCeleron_7300
abstract type IntelCeleron_6600HE <: IntelCeleron_6000 end; export IntelCeleron_6600HE
abstract type IntelCeleron_6305E <: IntelCeleron_6000 end; export IntelCeleron_6305E
abstract type IntelCeleron_5305U <: IntelCeleron_5000 end; export IntelCeleron_5305U
abstract type IntelCeleron_5205U <: IntelCeleron_5000 end; export IntelCeleron_5205U
abstract type IntelCeleron_4305UE <: IntelCeleron_4000 end; export IntelCeleron_4305UE
abstract type IntelCeleron_4205U <: IntelCeleron_4000 end; export IntelCeleron_4205U
abstract type IntelCeleron_3867U <: IntelCeleron_3000 end; export IntelCeleron_3867U
abstract type IntelCeleron_3965Y <: IntelCeleron_3000 end; export IntelCeleron_3965Y
abstract type IntelCeleron_3865U <: IntelCeleron_3000 end; export IntelCeleron_3865U
abstract type IntelCeleron_3965U <: IntelCeleron_3000 end; export IntelCeleron_3965U
abstract type IntelCeleron_3855U <: IntelCeleron_3000 end; export IntelCeleron_3855U
abstract type IntelCeleron_3955U <: IntelCeleron_3000 end; export IntelCeleron_3955U
abstract type IntelCeleron_3215U <: IntelCeleron_3000 end; export IntelCeleron_3215U
abstract type IntelCeleron_3765U <: IntelCeleron_3000 end; export IntelCeleron_3765U
abstract type IntelCeleron_3205U <: IntelCeleron_3000 end; export IntelCeleron_3205U
abstract type IntelCeleron_3755U <: IntelCeleron_3000 end; export IntelCeleron_3755U
abstract type IntelCeleron_2970M <: IntelCeleron_2000 end; export IntelCeleron_2970M
abstract type IntelCeleron_2000E <: IntelCeleron_2000 end; export IntelCeleron_2000E
abstract type IntelCeleron_2002E <: IntelCeleron_2000 end; export IntelCeleron_2002E
abstract type IntelCeleron_2957U <: IntelCeleron_2000 end; export IntelCeleron_2957U
abstract type IntelCeleron_2961Y <: IntelCeleron_2000 end; export IntelCeleron_2961Y
abstract type IntelCeleron_2981U <: IntelCeleron_2000 end; export IntelCeleron_2981U
abstract type IntelCeleron_2950M <: IntelCeleron_2000 end; export IntelCeleron_2950M
abstract type IntelCeleron_2955U <: IntelCeleron_2000 end; export IntelCeleron_2955U
abstract type IntelCeleron_2980U <: IntelCeleron_2000 end; export IntelCeleron_2980U
abstract type IntelCeleron_1005M <: IntelCeleron_1000 end; export IntelCeleron_1005M
abstract type IntelCeleron_1017U <: IntelCeleron_1000 end; export IntelCeleron_1017U
abstract type IntelCeleron_1019Y <: IntelCeleron_1000 end; export IntelCeleron_1019Y
abstract type IntelCeleron_1000M <: IntelCeleron_1000 end; export IntelCeleron_1000M
abstract type IntelCeleron_1007U <: IntelCeleron_1000 end; export IntelCeleron_1007U
abstract type IntelCeleron_1020E <: IntelCeleron_1000 end; export IntelCeleron_1020E
abstract type IntelCeleron_1020M <: IntelCeleron_1000 end; export IntelCeleron_1020M
abstract type IntelCeleron_1037U <: IntelCeleron_1000 end; export IntelCeleron_1037U
abstract type IntelCeleron_1047UE <: IntelCeleron_1000 end; export IntelCeleron_1047UE
                