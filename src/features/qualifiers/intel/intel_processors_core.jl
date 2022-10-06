# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------



### Core processors

abstract type IntelCore <: IntelProcessor end

#### Core X processors

abstract type IntelCore_X <: IntelCore end

#### Core i9 processors

abstract type IntelCore_i9 <: IntelCore end
abstract type IntelCore_i9_g8 <: IntelCore_i9 end
abstract type IntelCore_i9_g9 <: IntelCore_i9 end
abstract type IntelCore_i9_g10 <: IntelCore_i9 end
abstract type IntelCore_i9_g11 <: IntelCore_i9 end
abstract type IntelCore_i9_g12 <: IntelCore_i9 end

#### Core i7 processors

abstract type IntelCore_i7 <: IntelCore end
abstract type IntelCore_i7_g4 <: IntelCore_i7 end
abstract type IntelCore_i7_g5 <: IntelCore_i7 end
abstract type IntelCore_i7_g6 <: IntelCore_i7 end
abstract type IntelCore_i7_g7 <: IntelCore_i7 end
abstract type IntelCore_i7_g8 <: IntelCore_i7 end
abstract type IntelCore_i7_g9 <: IntelCore_i7 end
abstract type IntelCore_i7_g10 <: IntelCore_i7 end
abstract type IntelCore_i7_g11 <: IntelCore_i7 end
abstract type IntelCore_i7_g12 <: IntelCore_i7 end

#### Core i5 processors

abstract type IntelCore_i5 <: IntelCore end
abstract type IntelCore_i5_g4 <: IntelCore_i5 end
abstract type IntelCore_i5_g5 <: IntelCore_i5 end
abstract type IntelCore_i5_g6 <: IntelCore_i5 end
abstract type IntelCore_i5_g7 <: IntelCore_i5 end
abstract type IntelCore_i5_g8 <: IntelCore_i5 end
abstract type IntelCore_i5_g9 <: IntelCore_i5 end
abstract type IntelCore_i5_g10 <: IntelCore_i5 end
abstract type IntelCore_i5_g11 <: IntelCore_i5 end
abstract type IntelCore_i5_g12 <: IntelCore_i5 end

#### Core i3 processors

abstract type IntelCore_i3 <: IntelCore end
abstract type IntelCore_i3_g4 <: IntelCore_i3 end
abstract type IntelCore_i3_g5 <: IntelCore_i3 end
abstract type IntelCore_i3_g6 <: IntelCore_i3 end
abstract type IntelCore_i3_g7 <: IntelCore_i3 end
abstract type IntelCore_i3_g8 <: IntelCore_i3 end
abstract type IntelCore_i3_g9 <: IntelCore_i3 end
abstract type IntelCore_i3_g10 <: IntelCore_i3 end
abstract type IntelCore_i3_g11 <: IntelCore_i3 end
abstract type IntelCore_i3_g12 <: IntelCore_i3 end

#### Core M processors

abstract type IntelCore_M <: IntelCore end
abstract type IntelCore_M_g5 <: IntelCore_M end
abstract type IntelCore_M_g6 <: IntelCore_M end
abstract type IntelCore_M_g7 <: IntelCore_M end
abstract type IntelCore_M_g8 <: IntelCore_M end

export IntelCore,
       IntelCore_i3,
       IntelCore_i3_g12,
       IntelCore_i3_g11,
       IntelCore_i3_g10,
       IntelCore_i3_g9,
       IntelCore_i3_g8,
       IntelCore_i3_g7,
       IntelCore_i3_g6,
       IntelCore_i3_g5,
       IntelCore_i3_g4,
       IntelCore_i5,
       IntelCore_i5_g12,
       IntelCore_i5_g11,
       IntelCore_i5_g10,
       IntelCore_i5_g9,
       IntelCore_i5_g8,
       IntelCore_i5_g7,
       IntelCore_i5_g6,
       IntelCore_i5_g5,
       IntelCore_i5_g4,
       IntelCore_i7,
       IntelCore_i7_g12,
       IntelCore_i7_g11,
       IntelCore_i7_g10,
       IntelCore_i7_g9,
       IntelCore_i7_g8,
       IntelCore_i7_g7,
       IntelCore_i7_g6,
       IntelCore_i7_g5,
       IntelCore_i7_g4,
       IntelCore_i9,
       IntelCore_i9_g12,
       IntelCore_i9_g11,
       IntelCore_i9_g10,
       IntelCore_i9_g9,
       IntelCore_i9_g8,
       IntelCore_X,
       IntelCore_i9_10900X,
       IntelCore_M,
       IntelCore_M_g8,
       IntelCore_M_g7,
       IntelCore_M_g6,
       IntelCore_M_g5,
       IntelCore_i7_7500U


# Processor models

abstract type IntelCore_i5_11300H <: IntelCore_i5_g11 end; export IntelCore_i5_11300H
abstract type IntelCore_i5_1140G7 <: IntelCore_i5_g11 end; export IntelCore_i5_1140G7
abstract type IntelCore_i5_1145G7 <: IntelCore_i5_g11 end; export IntelCore_i5_1145G7
abstract type IntelCore_i7_11370H <: IntelCore_i7_g11 end; export IntelCore_i7_11370H
abstract type IntelCore_i7_11375H <: IntelCore_i7_g11 end; export IntelCore_i7_11375H
abstract type IntelCore_i7_1180G7 <: IntelCore_i7_g11 end; export IntelCore_i7_1180G7
abstract type IntelCore_i5_1145G7E <: IntelCore_i5_g11 end; export IntelCore_i5_1145G7E
abstract type IntelCore_i5_1145GRE <: IntelCore_i5_g11 end; export IntelCore_i5_1145GRE
abstract type IntelCore_i7_1185G7E <: IntelCore_i7_g11 end; export IntelCore_i7_1185G7E
abstract type IntelCore_i7_1185GRE <: IntelCore_i7_g11 end; export IntelCore_i7_1185GRE
abstract type IntelCore_i5_1130G7 <: IntelCore_i5_g11 end; export IntelCore_i5_1130G7
abstract type IntelCore_i5_1135G7 <: IntelCore_i5_g11 end; export IntelCore_i5_1135G7
abstract type IntelCore_i7_1160G7 <: IntelCore_i7_g11 end; export IntelCore_i7_1160G7
abstract type IntelCore_i7_1165G7 <: IntelCore_i7_g11 end; export IntelCore_i7_1165G7
abstract type IntelCore_i7_1185G7 <: IntelCore_i7_g11 end; export IntelCore_i7_1185G7
abstract type IntelCore_i3_1215U <: IntelCore_i3_g12 end; export IntelCore_i3_1215U
abstract type IntelCore_i5_1235U <: IntelCore_i5_g12 end; export IntelCore_i5_1235U
abstract type IntelCore_i7_1255U <: IntelCore_i7_g12 end; export IntelCore_i7_1255U
abstract type IntelCore_i5_1245U <: IntelCore_i5_g12 end; export IntelCore_i5_1245U
abstract type IntelCore_i7_1265U <: IntelCore_i7_g12 end; export IntelCore_i7_1265U
abstract type IntelCore_i7_12700 <: IntelCore_i7_g12 end; export IntelCore_i7_12700
abstract type IntelCore_i9_12900 <: IntelCore_i9_g12 end; export IntelCore_i9_12900
abstract type IntelCore_i7_11700B <: IntelCore_i7_g11 end; export IntelCore_i7_11700B
abstract type IntelCore_i9_11900KB <: IntelCore_i9_g11 end; export IntelCore_i9_11900KB
abstract type IntelCore_i3_1115G4 <: IntelCore_i3_g11 end; export IntelCore_i3_1115G4
abstract type IntelCore_i5_9300H <: IntelCore_i5_g9 end; export IntelCore_i5_9300H
abstract type IntelCore_i7_9750H <: IntelCore_i7_g9 end; export IntelCore_i7_9750H
abstract type IntelCore_i9_9980HK <: IntelCore_i9_g9 end; export IntelCore_i9_9980HK
abstract type IntelCore_i7_9850H <: IntelCore_i7_g9 end; export IntelCore_i7_9850H
abstract type IntelCore_i3_8145U <: IntelCore_i3_g8 end; export IntelCore_i3_8145U
abstract type IntelCore_i5_8265U <: IntelCore_i5_g8 end; export IntelCore_i5_8265U
abstract type IntelCore_i7_8565U <: IntelCore_i7_g8 end; export IntelCore_i7_8565U
abstract type IntelCore_i5_8365U <: IntelCore_i5_g8 end; export IntelCore_i5_8365U
abstract type IntelCore_i7_8665U <: IntelCore_i7_g8 end; export IntelCore_i7_8665U
abstract type IntelCore_i3_10110U <: IntelCore_i3_g10 end; export IntelCore_i3_10110U
abstract type IntelCore_i5_10210U <: IntelCore_i5_g10 end; export IntelCore_i5_10210U
abstract type IntelCore_i7_10710U <: IntelCore_i7_g10 end; export IntelCore_i7_10710U
abstract type IntelCore_i7_8559U <: IntelCore_i7_g8 end; export IntelCore_i7_8559U
abstract type IntelCore_i3_8109U <: IntelCore_i3_g8 end; export IntelCore_i3_8109U
abstract type IntelCore_i5_8259U <: IntelCore_i5_g8 end; export IntelCore_i5_8259U
abstract type IntelCore_i7_8705G <: IntelCore_i7_g8 end; export IntelCore_i7_8705G
abstract type IntelCore_i7_8809G <: IntelCore_i7_g8 end; export IntelCore_i7_8809G
abstract type IntelCore_i5_7300U <: IntelCore_i5_g7 end; export IntelCore_i5_7300U
abstract type IntelCore_i3_7100U <: IntelCore_i3_g7 end; export IntelCore_i3_7100U
abstract type IntelCore_i7_7567U <: IntelCore_i7_g7 end; export IntelCore_i7_7567U
abstract type IntelCore_i5_7260U <: IntelCore_i5_g7 end; export IntelCore_i5_7260U
abstract type IntelCore_i3_6157U <: IntelCore_i3_g6 end; export IntelCore_i3_6157U
abstract type IntelCore_i3_6167U <: IntelCore_i3_g6 end; export IntelCore_i3_6167U
abstract type IntelCore_i5_6267U <: IntelCore_i5_g5 end; export IntelCore_i5_6267U
abstract type IntelCore_i5_6287U <: IntelCore_i5_g5 end; export IntelCore_i5_6287U
abstract type IntelCore_i7_6567U <: IntelCore_i7_g6 end; export IntelCore_i7_6567U
abstract type IntelCore_i7_6660U <: IntelCore_i7_g6 end; export IntelCore_i7_6660U
abstract type IntelCore_i5_6260U <: IntelCore_i5_g5 end; export IntelCore_i5_6260U
abstract type IntelCore_i5_6360U <: IntelCore_i5_g5 end; export IntelCore_i5_6360U
abstract type IntelCore_i7_6560U <: IntelCore_i7_g6 end; export IntelCore_i7_6560U
abstract type IntelCore_i7_6650U <: IntelCore_i7_g6 end; export IntelCore_i7_6650U
abstract type IntelCore_i3_5157U <: IntelCore_i3_g5 end; export IntelCore_i3_5157U
abstract type IntelCore_i5_5257U <: IntelCore_i5_g5 end; export IntelCore_i5_5257U
abstract type IntelCore_i5_5287U <: IntelCore_i5_g5 end; export IntelCore_i5_5287U
abstract type IntelCore_i7_5557U <: IntelCore_i7_g5 end; export IntelCore_i7_5557U
abstract type IntelCore_i5_4278U <: IntelCore_i5_g4 end; export IntelCore_i5_4278U
abstract type IntelCore_i5_4308U <: IntelCore_i5_g4 end; export IntelCore_i5_4308U
abstract type IntelCore_i7_4578U <: IntelCore_i7_g4 end; export IntelCore_i7_4578U
abstract type IntelCore_i3_4158U <: IntelCore_i3_g4 end; export IntelCore_i3_4158U
abstract type IntelCore_i5_4258U <: IntelCore_i5_g4 end; export IntelCore_i5_4258U
abstract type IntelCore_i5_4288U <: IntelCore_i5_g4 end; export IntelCore_i5_4288U
abstract type IntelCore_i7_4558U <: IntelCore_i7_g4 end; export IntelCore_i7_4558U
abstract type IntelCore_i5_8279U <: IntelCore_i5_g8 end; export IntelCore_i5_8279U
abstract type IntelCore_i7_8569U <: IntelCore_i7_g8 end; export IntelCore_i7_8569U
abstract type IntelCore_i5_8269U <: IntelCore_i5_g8 end; export IntelCore_i5_8269U
abstract type IntelCore_i3_7167U <: IntelCore_i3_g7 end; export IntelCore_i3_7167U
abstract type IntelCore_i5_7267U <: IntelCore_i5_g7 end; export IntelCore_i5_7267U
abstract type IntelCore_i5_7287U <: IntelCore_i5_g7 end; export IntelCore_i5_7287U
abstract type IntelCore_i5_8257U <: IntelCore_i5_g8 end; export IntelCore_i5_8257U
abstract type IntelCore_i7_8557U <: IntelCore_i7_g8 end; export IntelCore_i7_8557U
abstract type IntelCore_i5_7360U <: IntelCore_i5_g7 end; export IntelCore_i5_7360U
abstract type IntelCore_i7_7560U <: IntelCore_i7_g7 end; export IntelCore_i7_7560U
abstract type IntelCore_i7_7660U <: IntelCore_i7_g7 end; export IntelCore_i7_7660U
abstract type IntelCore_i5_1038NG7 <: IntelCore_i5_g10 end; export IntelCore_i5_1038NG7
abstract type IntelCore_i7_1068NG7 <: IntelCore_i7_g10 end; export IntelCore_i7_1068NG7
abstract type IntelCore_i3_1000G4 <: IntelCore_i3_g10 end; export IntelCore_i3_1000G4
abstract type IntelCore_i5_1030G4 <: IntelCore_i5_g10 end; export IntelCore_i5_1030G4
abstract type IntelCore_i5_1030G7 <: IntelCore_i5_g10 end; export IntelCore_i5_1030G7
abstract type IntelCore_i5_1035G4 <: IntelCore_i5_g10 end; export IntelCore_i5_1035G4
abstract type IntelCore_i5_1035G7 <: IntelCore_i5_g10 end; export IntelCore_i5_1035G7
abstract type IntelCore_i7_1060G7 <: IntelCore_i7_g10 end; export IntelCore_i7_1060G7
abstract type IntelCore_i7_1065G7 <: IntelCore_i7_g10 end; export IntelCore_i7_1065G7
abstract type IntelCore_i5_8305G <: IntelCore_i5_g8 end; export IntelCore_i5_8305G
abstract type IntelCore_i7_8706G <: IntelCore_i7_g8 end; export IntelCore_i7_8706G
abstract type IntelCore_i7_8709G <: IntelCore_i7_g8 end; export IntelCore_i7_8709G
abstract type IntelCore_i3_7100 <: IntelCore_i3_g7 end; export IntelCore_i3_7100
abstract type IntelCore_i3_7100E <: IntelCore_i3_g7 end; export IntelCore_i3_7100E
abstract type IntelCore_i3_7100H <: IntelCore_i3_g7 end; export IntelCore_i3_7100H
abstract type IntelCore_i3_7100T <: IntelCore_i3_g7 end; export IntelCore_i3_7100T
abstract type IntelCore_i3_7101E <: IntelCore_i3_g7 end; export IntelCore_i3_7101E
abstract type IntelCore_i3_7101TE <: IntelCore_i3_g7 end; export IntelCore_i3_7101TE
abstract type IntelCore_i3_7102E <: IntelCore_i3_g7 end; export IntelCore_i3_7102E
abstract type IntelCore_i3_7300 <: IntelCore_i3_g7 end; export IntelCore_i3_7300
abstract type IntelCore_i3_7300T <: IntelCore_i3_g7 end; export IntelCore_i3_7300T
abstract type IntelCore_i3_7320 <: IntelCore_i3_g7 end; export IntelCore_i3_7320
abstract type IntelCore_i3_7350K <: IntelCore_i3_g7 end; export IntelCore_i3_7350K
abstract type IntelCore_i5_7300HQ <: IntelCore_i5_g7 end; export IntelCore_i5_7300HQ
abstract type IntelCore_i5_7400 <: IntelCore_i5_g7 end; export IntelCore_i5_7400
abstract type IntelCore_i5_7400T <: IntelCore_i5_g7 end; export IntelCore_i5_7400T
abstract type IntelCore_i5_7440EQ <: IntelCore_i5_g7 end; export IntelCore_i5_7440EQ
abstract type IntelCore_i5_7440HQ <: IntelCore_i5_g7 end; export IntelCore_i5_7440HQ
abstract type IntelCore_i5_7442EQ <: IntelCore_i5_g7 end; export IntelCore_i5_7442EQ
abstract type IntelCore_i5_7500 <: IntelCore_i5_g7 end; export IntelCore_i5_7500
abstract type IntelCore_i5_7500T <: IntelCore_i5_g7 end; export IntelCore_i5_7500T
abstract type IntelCore_i5_7600 <: IntelCore_i5_g7 end; export IntelCore_i5_7600
abstract type IntelCore_i5_7600K <: IntelCore_i5_g7 end; export IntelCore_i5_7600K
abstract type IntelCore_i5_7600T <: IntelCore_i5_g7 end; export IntelCore_i5_7600T
abstract type IntelCore_i7_7700 <: IntelCore_i7_g7 end; export IntelCore_i7_7700
abstract type IntelCore_i7_7700HQ <: IntelCore_i7_g7 end; export IntelCore_i7_7700HQ
abstract type IntelCore_i7_7700K <: IntelCore_i7_g7 end; export IntelCore_i7_7700K
abstract type IntelCore_i7_7700T <: IntelCore_i7_g7 end; export IntelCore_i7_7700T
abstract type IntelCore_i7_7820EQ <: IntelCore_i7_g7 end; export IntelCore_i7_7820EQ
abstract type IntelCore_i7_7820HK <: IntelCore_i7_g7 end; export IntelCore_i7_7820HK
abstract type IntelCore_i7_7820HQ <: IntelCore_i7_g7 end; export IntelCore_i7_7820HQ
abstract type IntelCore_i7_7920HQ <: IntelCore_i7_g7 end; export IntelCore_i7_7920HQ
abstract type IntelCore_i3_7020U <: IntelCore_i3_g7 end; export IntelCore_i3_7020U
abstract type IntelCore_i3_7130U <: IntelCore_i3_g7 end; export IntelCore_i3_7130U
abstract type IntelCore_i7_7600U <: IntelCore_i7_g7 end; export IntelCore_i7_7600U
abstract type IntelCore_i5_7200U <: IntelCore_i5_g7 end; export IntelCore_i5_7200U
abstract type IntelCore_i7_7500U <: IntelCore_i7_g7 end; export IntelCore_i7_7500U
abstract type IntelCore_M3_7Y32 <: IntelCore_M_g7 end; export IntelCore_M3_7Y32
abstract type IntelCore_i5_7Y57 <: IntelCore_i5_g7 end; export IntelCore_i5_7Y57
abstract type IntelCore_i5_7Y54 <: IntelCore_i5_g7 end; export IntelCore_i5_7Y54
abstract type IntelCore_i7_7Y75 <: IntelCore_i7_g7 end; export IntelCore_i7_7Y75
abstract type IntelCore_M3_7Y30 <: IntelCore_M_g7 end; export IntelCore_M3_7Y30
abstract type IntelCore_i3_6100E <: IntelCore_i3_g6 end; export IntelCore_i3_6100E
abstract type IntelCore_i3_6100TE <: IntelCore_i3_g6 end; export IntelCore_i3_6100TE
abstract type IntelCore_i3_6102E <: IntelCore_i3_g6 end; export IntelCore_i3_6102E
abstract type IntelCore_i5_6440EQ <: IntelCore_i5_g5 end; export IntelCore_i5_6440EQ
abstract type IntelCore_i5_6442EQ <: IntelCore_i5_g5 end; export IntelCore_i5_6442EQ
abstract type IntelCore_i5_6500TE <: IntelCore_i5_g5 end; export IntelCore_i5_6500TE
abstract type IntelCore_i7_6700TE <: IntelCore_i7_g6 end; export IntelCore_i7_6700TE
abstract type IntelCore_i7_6820EQ <: IntelCore_i7_g6 end; export IntelCore_i7_6820EQ
abstract type IntelCore_i7_6822EQ <: IntelCore_i7_g6 end; export IntelCore_i7_6822EQ
abstract type IntelCore_i3_6100 <: IntelCore_i3_g6 end; export IntelCore_i3_6100
abstract type IntelCore_i3_6100H <: IntelCore_i3_g6 end; export IntelCore_i3_6100H
abstract type IntelCore_i3_6100T <: IntelCore_i3_g6 end; export IntelCore_i3_6100T
abstract type IntelCore_i3_6300 <: IntelCore_i3_g6 end; export IntelCore_i3_6300
abstract type IntelCore_i3_6300T <: IntelCore_i3_g6 end; export IntelCore_i3_6300T
abstract type IntelCore_i3_6320 <: IntelCore_i3_g6 end; export IntelCore_i3_6320
abstract type IntelCore_i5_6300HQ <: IntelCore_i5_g5 end; export IntelCore_i5_6300HQ
abstract type IntelCore_i5_6400 <: IntelCore_i5_g5 end; export IntelCore_i5_6400
abstract type IntelCore_i5_6400T <: IntelCore_i5_g5 end; export IntelCore_i5_6400T
abstract type IntelCore_i5_6440HQ <: IntelCore_i5_g5 end; export IntelCore_i5_6440HQ
abstract type IntelCore_i5_6500 <: IntelCore_i5_g5 end; export IntelCore_i5_6500
abstract type IntelCore_i5_6500T <: IntelCore_i5_g5 end; export IntelCore_i5_6500T
abstract type IntelCore_i5_6600 <: IntelCore_i5_g5 end; export IntelCore_i5_6600
abstract type IntelCore_i5_6600T <: IntelCore_i5_g5 end; export IntelCore_i5_6600T
abstract type IntelCore_i7_6700 <: IntelCore_i7_g6 end; export IntelCore_i7_6700
abstract type IntelCore_i7_6700HQ <: IntelCore_i7_g6 end; export IntelCore_i7_6700HQ
abstract type IntelCore_i7_6700T <: IntelCore_i7_g6 end; export IntelCore_i7_6700T
abstract type IntelCore_i7_6820HK <: IntelCore_i7_g6 end; export IntelCore_i7_6820HK
abstract type IntelCore_i7_6820HQ <: IntelCore_i7_g6 end; export IntelCore_i7_6820HQ
abstract type IntelCore_i7_6920HQ <: IntelCore_i7_g6 end; export IntelCore_i7_6920HQ
abstract type IntelCore_i5_6600K <: IntelCore_i5_g5 end; export IntelCore_i5_6600K
abstract type IntelCore_i7_6700K <: IntelCore_i7_g6 end; export IntelCore_i7_6700K
abstract type IntelCore_i3_6006U <: IntelCore_i3_g6 end; export IntelCore_i3_6006U
abstract type IntelCore_i3_6100U <: IntelCore_i3_g6 end; export IntelCore_i3_6100U
abstract type IntelCore_i5_6200U <: IntelCore_i5_g5 end; export IntelCore_i5_6200U
abstract type IntelCore_i5_6300U <: IntelCore_i5_g5 end; export IntelCore_i5_6300U
abstract type IntelCore_i7_6500U <: IntelCore_i7_g6 end; export IntelCore_i7_6500U
abstract type IntelCore_i7_6600U <: IntelCore_i7_g6 end; export IntelCore_i7_6600U
abstract type IntelCore_M3_6Y30 <: IntelCore_M_g6 end; export IntelCore_M3_6Y30
abstract type IntelCore_M5_6Y54 <: IntelCore_M_g6 end; export IntelCore_M5_6Y54
abstract type IntelCore_M5_6Y57 <: IntelCore_M_g6 end; export IntelCore_M5_6Y57
abstract type IntelCore_M7_6Y75 <: IntelCore_M_g6 end; export IntelCore_M7_6Y75
abstract type IntelCore_i3_6098P <: IntelCore_i3_g6 end; export IntelCore_i3_6098P
abstract type IntelCore_i5_6402P <: IntelCore_i5_g5 end; export IntelCore_i5_6402P
abstract type IntelCore_i5_5250U <: IntelCore_i5_g5 end; export IntelCore_i5_5250U
abstract type IntelCore_i5_5350U <: IntelCore_i5_g5 end; export IntelCore_i5_5350U
abstract type IntelCore_i7_5550U <: IntelCore_i7_g5 end; export IntelCore_i7_5550U
abstract type IntelCore_i7_5650U <: IntelCore_i7_g5 end; export IntelCore_i7_5650U
abstract type IntelCore_i3_5015U <: IntelCore_i3_g5 end; export IntelCore_i3_5015U
abstract type IntelCore_i3_5020U <: IntelCore_i3_g5 end; export IntelCore_i3_5020U
abstract type IntelCore_i3_5005U <: IntelCore_i3_g5 end; export IntelCore_i3_5005U
abstract type IntelCore_i3_5010U <: IntelCore_i3_g5 end; export IntelCore_i3_5010U
abstract type IntelCore_i5_5200U <: IntelCore_i5_g5 end; export IntelCore_i5_5200U
abstract type IntelCore_i5_5300U <: IntelCore_i5_g5 end; export IntelCore_i5_5300U
abstract type IntelCore_i7_5500U <: IntelCore_i7_g5 end; export IntelCore_i7_5500U
abstract type IntelCore_i7_5600U <: IntelCore_i7_g5 end; export IntelCore_i7_5600U
abstract type IntelCore_5Y10c <: IntelCore_M_g5 end; export IntelCore_5Y10c
abstract type IntelCore_5Y31 <: IntelCore_M_g5 end; export IntelCore_5Y31
abstract type IntelCore_5Y51 <: IntelCore_M_g5 end; export IntelCore_5Y51
abstract type IntelCore_5Y71 <: IntelCore_M_g5 end; export IntelCore_5Y71
abstract type IntelCore_5Y10 <: IntelCore_M_g5 end; export IntelCore_5Y10
abstract type IntelCore_5Y10a <: IntelCore_M_g5 end; export IntelCore_5Y10a
abstract type IntelCore_5Y70 <: IntelCore_M_g5 end; export IntelCore_5Y70
abstract type IntelCore_i5_4260U <: IntelCore_i5_g4 end; export IntelCore_i5_4260U
abstract type IntelCore_i5_4360U <: IntelCore_i5_g4 end; export IntelCore_i5_4360U
abstract type IntelCore_i5_4250U <: IntelCore_i5_g4 end; export IntelCore_i5_4250U
abstract type IntelCore_i5_4350U <: IntelCore_i5_g4 end; export IntelCore_i5_4350U
abstract type IntelCore_i7_4550U <: IntelCore_i7_g4 end; export IntelCore_i7_4550U
abstract type IntelCore_i7_4650U <: IntelCore_i7_g4 end; export IntelCore_i7_4650U
abstract type IntelCore_i3_4370T <: IntelCore_i3_g4 end; export IntelCore_i3_4370T
abstract type IntelCore_i7_4720HQ <: IntelCore_i7_g4 end; export IntelCore_i7_4720HQ
abstract type IntelCore_i7_4722HQ <: IntelCore_i7_g4 end; export IntelCore_i7_4722HQ
abstract type IntelCore_i3_4360T <: IntelCore_i3_g4 end; export IntelCore_i3_4360T
abstract type IntelCore_i3_4370 <: IntelCore_i3_g4 end; export IntelCore_i3_4370
abstract type IntelCore_i5_4210H <: IntelCore_i5_g4 end; export IntelCore_i5_4210H
abstract type IntelCore_i5_4690K <: IntelCore_i5_g4 end; export IntelCore_i5_4690K
abstract type IntelCore_i7_4790K <: IntelCore_i7_g4 end; export IntelCore_i7_4790K
abstract type IntelCore_i3_4340TE <: IntelCore_i3_g4 end; export IntelCore_i3_4340TE
abstract type IntelCore_i3_4350 <: IntelCore_i3_g4 end; export IntelCore_i3_4350
abstract type IntelCore_i3_4350T <: IntelCore_i3_g4 end; export IntelCore_i3_4350T
abstract type IntelCore_i3_4360 <: IntelCore_i3_g4 end; export IntelCore_i3_4360
abstract type IntelCore_i5_4460 <: IntelCore_i5_g4 end; export IntelCore_i5_4460
abstract type IntelCore_i5_4460S <: IntelCore_i5_g4 end; export IntelCore_i5_4460S
abstract type IntelCore_i5_4460T <: IntelCore_i5_g4 end; export IntelCore_i5_4460T
abstract type IntelCore_i5_4590 <: IntelCore_i5_g4 end; export IntelCore_i5_4590
abstract type IntelCore_i5_4590S <: IntelCore_i5_g4 end; export IntelCore_i5_4590S
abstract type IntelCore_i5_4590T <: IntelCore_i5_g4 end; export IntelCore_i5_4590T
abstract type IntelCore_i5_4690 <: IntelCore_i5_g4 end; export IntelCore_i5_4690
abstract type IntelCore_i5_4690S <: IntelCore_i5_g4 end; export IntelCore_i5_4690S
abstract type IntelCore_i5_4690T <: IntelCore_i5_g4 end; export IntelCore_i5_4690T
abstract type IntelCore_i7_4785T <: IntelCore_i7_g4 end; export IntelCore_i7_4785T
abstract type IntelCore_i7_4790 <: IntelCore_i7_g4 end; export IntelCore_i7_4790
abstract type IntelCore_i7_4790S <: IntelCore_i7_g4 end; export IntelCore_i7_4790S
abstract type IntelCore_i7_4790T <: IntelCore_i7_g4 end; export IntelCore_i7_4790T
abstract type IntelCore_i3_4110E <: IntelCore_i3_g4 end; export IntelCore_i3_4110E
abstract type IntelCore_i3_4110M <: IntelCore_i3_g4 end; export IntelCore_i3_4110M
abstract type IntelCore_i3_4112E <: IntelCore_i3_g4 end; export IntelCore_i3_4112E
abstract type IntelCore_i5_4210M <: IntelCore_i5_g4 end; export IntelCore_i5_4210M
abstract type IntelCore_i5_4410E <: IntelCore_i5_g4 end; export IntelCore_i5_4410E
abstract type IntelCore_i5_4422E <: IntelCore_i5_g4 end; export IntelCore_i5_4422E
abstract type IntelCore_i7_4710HQ <: IntelCore_i7_g4 end; export IntelCore_i7_4710HQ
abstract type IntelCore_i7_4710MQ <: IntelCore_i7_g4 end; export IntelCore_i7_4710MQ
abstract type IntelCore_i7_4712HQ <: IntelCore_i7_g4 end; export IntelCore_i7_4712HQ
abstract type IntelCore_i7_4712MQ <: IntelCore_i7_g4 end; export IntelCore_i7_4712MQ
abstract type IntelCore_i5_4310M <: IntelCore_i5_g4 end; export IntelCore_i5_4310M
abstract type IntelCore_i5_4340M <: IntelCore_i5_g4 end; export IntelCore_i5_4340M
abstract type IntelCore_i7_4610M <: IntelCore_i7_g4 end; export IntelCore_i7_4610M
abstract type IntelCore_i7_4810MQ <: IntelCore_i7_g4 end; export IntelCore_i7_4810MQ
abstract type IntelCore_i7_4910MQ <: IntelCore_i7_g4 end; export IntelCore_i7_4910MQ
abstract type IntelCore_i7_4940MX <: IntelCore_X end; export IntelCore_i7_4940MX
abstract type IntelCore_i3_4000M <: IntelCore_i3_g4 end; export IntelCore_i3_4000M
abstract type IntelCore_i3_4100E <: IntelCore_i3_g4 end; export IntelCore_i3_4100E
abstract type IntelCore_i3_4100M <: IntelCore_i3_g4 end; export IntelCore_i3_4100M
abstract type IntelCore_i3_4102E <: IntelCore_i3_g4 end; export IntelCore_i3_4102E
abstract type IntelCore_i3_4330 <: IntelCore_i3_g4 end; export IntelCore_i3_4330
abstract type IntelCore_i3_4330T <: IntelCore_i3_g4 end; export IntelCore_i3_4330T
abstract type IntelCore_i3_4330TE <: IntelCore_i3_g4 end; export IntelCore_i3_4330TE
abstract type IntelCore_i3_4340 <: IntelCore_i3_g4 end; export IntelCore_i3_4340
abstract type IntelCore_i5_4200H <: IntelCore_i5_g4 end; export IntelCore_i5_4200H
abstract type IntelCore_i5_4200M <: IntelCore_i5_g4 end; export IntelCore_i5_4200M
abstract type IntelCore_i5_4300M <: IntelCore_i5_g4 end; export IntelCore_i5_4300M
abstract type IntelCore_i5_4330M <: IntelCore_i5_g4 end; export IntelCore_i5_4330M
abstract type IntelCore_i5_4400E <: IntelCore_i5_g4 end; export IntelCore_i5_4400E
abstract type IntelCore_i5_4402E <: IntelCore_i5_g4 end; export IntelCore_i5_4402E
abstract type IntelCore_i5_4440 <: IntelCore_i5_g4 end; export IntelCore_i5_4440
abstract type IntelCore_i5_4440S <: IntelCore_i5_g4 end; export IntelCore_i5_4440S
abstract type IntelCore_i7_4600M <: IntelCore_i7_g4 end; export IntelCore_i7_4600M
abstract type IntelCore_i7_4771 <: IntelCore_i7_g4 end; export IntelCore_i7_4771
abstract type IntelCore_i5_4430 <: IntelCore_i5_g4 end; export IntelCore_i5_4430
abstract type IntelCore_i5_4430S <: IntelCore_i5_g4 end; export IntelCore_i5_4430S
abstract type IntelCore_i5_4570 <: IntelCore_i5_g4 end; export IntelCore_i5_4570
abstract type IntelCore_i5_4570S <: IntelCore_i5_g4 end; export IntelCore_i5_4570S
abstract type IntelCore_i5_4570T <: IntelCore_i5_g4 end; export IntelCore_i5_4570T
abstract type IntelCore_i5_4570TE <: IntelCore_i5_g4 end; export IntelCore_i5_4570TE
abstract type IntelCore_i5_4670 <: IntelCore_i5_g4 end; export IntelCore_i5_4670
abstract type IntelCore_i5_4670K <: IntelCore_i5_g4 end; export IntelCore_i5_4670K
abstract type IntelCore_i5_4670S <: IntelCore_i5_g4 end; export IntelCore_i5_4670S
abstract type IntelCore_i5_4670T <: IntelCore_i5_g4 end; export IntelCore_i5_4670T
abstract type IntelCore_i7_4700EQ <: IntelCore_i7_g4 end; export IntelCore_i7_4700EQ
abstract type IntelCore_i7_4700HQ <: IntelCore_i7_g4 end; export IntelCore_i7_4700HQ
abstract type IntelCore_i7_4700MQ <: IntelCore_i7_g4 end; export IntelCore_i7_4700MQ
abstract type IntelCore_i7_4702HQ <: IntelCore_i7_g4 end; export IntelCore_i7_4702HQ
abstract type IntelCore_i7_4702MQ <: IntelCore_i7_g4 end; export IntelCore_i7_4702MQ
abstract type IntelCore_i7_4765T <: IntelCore_i7_g4 end; export IntelCore_i7_4765T
abstract type IntelCore_i7_4770 <: IntelCore_i7_g4 end; export IntelCore_i7_4770
abstract type IntelCore_i7_4770K <: IntelCore_i7_g4 end; export IntelCore_i7_4770K
abstract type IntelCore_i7_4770S <: IntelCore_i7_g4 end; export IntelCore_i7_4770S
abstract type IntelCore_i7_4770T <: IntelCore_i7_g4 end; export IntelCore_i7_4770T
abstract type IntelCore_i7_4770TE <: IntelCore_i7_g4 end; export IntelCore_i7_4770TE
abstract type IntelCore_i7_4800MQ <: IntelCore_i7_g4 end; export IntelCore_i7_4800MQ
abstract type IntelCore_i7_4900MQ <: IntelCore_i7_g4 end; export IntelCore_i7_4900MQ
abstract type IntelCore_i7_4930MX <: IntelCore_X end; export IntelCore_i7_4930MX
abstract type IntelCore_i3_4170 <: IntelCore_i3_g4 end; export IntelCore_i3_4170
abstract type IntelCore_i3_4170T <: IntelCore_i3_g4 end; export IntelCore_i3_4170T
abstract type IntelCore_i3_4160 <: IntelCore_i3_g4 end; export IntelCore_i3_4160
abstract type IntelCore_i3_4160T <: IntelCore_i3_g4 end; export IntelCore_i3_4160T
abstract type IntelCore_i3_4150 <: IntelCore_i3_g4 end; export IntelCore_i3_4150
abstract type IntelCore_i3_4150T <: IntelCore_i3_g4 end; export IntelCore_i3_4150T
abstract type IntelCore_i3_4025U <: IntelCore_i3_g4 end; export IntelCore_i3_4025U
abstract type IntelCore_i3_4030U <: IntelCore_i3_g4 end; export IntelCore_i3_4030U
abstract type IntelCore_i3_4120U <: IntelCore_i3_g4 end; export IntelCore_i3_4120U
abstract type IntelCore_i5_4210U <: IntelCore_i5_g4 end; export IntelCore_i5_4210U
abstract type IntelCore_i7_4510U <: IntelCore_i7_g4 end; export IntelCore_i7_4510U
abstract type IntelCore_i5_4310U <: IntelCore_i5_g4 end; export IntelCore_i5_4310U
abstract type IntelCore_i3_4005U <: IntelCore_i3_g4 end; export IntelCore_i3_4005U
abstract type IntelCore_i3_4130 <: IntelCore_i3_g4 end; export IntelCore_i3_4130
abstract type IntelCore_i3_4130T <: IntelCore_i3_g4 end; export IntelCore_i3_4130T
abstract type IntelCore_i5_4300U <: IntelCore_i5_g4 end; export IntelCore_i5_4300U
abstract type IntelCore_i7_4600U <: IntelCore_i7_g4 end; export IntelCore_i7_4600U
abstract type IntelCore_i3_4010U <: IntelCore_i3_g4 end; export IntelCore_i3_4010U
abstract type IntelCore_i3_4100U <: IntelCore_i3_g4 end; export IntelCore_i3_4100U
abstract type IntelCore_i5_4200U <: IntelCore_i5_g4 end; export IntelCore_i5_4200U
abstract type IntelCore_i7_4500U <: IntelCore_i7_g4 end; export IntelCore_i7_4500U
abstract type IntelCore_i3_4030Y <: IntelCore_i3_g4 end; export IntelCore_i3_4030Y
abstract type IntelCore_i5_4220Y <: IntelCore_i5_g4 end; export IntelCore_i5_4220Y
abstract type IntelCore_i3_4012Y <: IntelCore_i3_g4 end; export IntelCore_i3_4012Y
abstract type IntelCore_i3_4020Y <: IntelCore_i3_g4 end; export IntelCore_i3_4020Y
abstract type IntelCore_i5_4202Y <: IntelCore_i5_g4 end; export IntelCore_i5_4202Y
abstract type IntelCore_i5_4210Y <: IntelCore_i5_g4 end; export IntelCore_i5_4210Y
abstract type IntelCore_i5_4300Y <: IntelCore_i5_g4 end; export IntelCore_i5_4300Y
abstract type IntelCore_i5_4302Y <: IntelCore_i5_g4 end; export IntelCore_i5_4302Y
abstract type IntelCore_i7_4610Y <: IntelCore_i7_g4 end; export IntelCore_i7_4610Y
abstract type IntelCore_i3_4010Y <: IntelCore_i3_g4 end; export IntelCore_i3_4010Y
abstract type IntelCore_i5_4200Y <: IntelCore_i5_g4 end; export IntelCore_i5_4200Y
abstract type IntelCore_i7_3940XM <: IntelCore_X end; export IntelCore_i7_3940XM
abstract type IntelCore_i7_3920XM <: IntelCore_X end; export IntelCore_i7_3920XM
abstract type IntelCore_i5_1240P <: IntelCore_i5_g12 end; export IntelCore_i5_1240P
abstract type IntelCore_i7_1260P <: IntelCore_i7_g12 end; export IntelCore_i7_1260P
abstract type IntelCore_i5_11400H <: IntelCore_i5_g11 end; export IntelCore_i5_11400H
abstract type IntelCore_i7_11800H <: IntelCore_i7_g11 end; export IntelCore_i7_11800H
abstract type IntelCore_i3_10105 <: IntelCore_i3_g10 end; export IntelCore_i3_10105
abstract type IntelCore_i3_10105T <: IntelCore_i3_g10 end; export IntelCore_i3_10105T
abstract type IntelCore_i3_10305 <: IntelCore_i3_g10 end; export IntelCore_i3_10305
abstract type IntelCore_i3_10305T <: IntelCore_i3_g10 end; export IntelCore_i3_10305T
abstract type IntelCore_i3_10325 <: IntelCore_i3_g10 end; export IntelCore_i3_10325
abstract type IntelCore_i5_10505 <: IntelCore_i5_g10 end; export IntelCore_i5_10505
abstract type IntelCore_i9_10850K <: IntelCore_i9_g10 end; export IntelCore_i9_10850K
abstract type IntelCore_i3_10100 <: IntelCore_i3_g10 end; export IntelCore_i3_10100
abstract type IntelCore_i3_10100E <: IntelCore_i3_g10 end; export IntelCore_i3_10100E
abstract type IntelCore_i3_10100T <: IntelCore_i3_g10 end; export IntelCore_i3_10100T
abstract type IntelCore_i3_10100TE <: IntelCore_i3_g10 end; export IntelCore_i3_10100TE
abstract type IntelCore_i3_10300 <: IntelCore_i3_g10 end; export IntelCore_i3_10300
abstract type IntelCore_i3_10300T <: IntelCore_i3_g10 end; export IntelCore_i3_10300T
abstract type IntelCore_i3_10320 <: IntelCore_i3_g10 end; export IntelCore_i3_10320
abstract type IntelCore_i5_10400 <: IntelCore_i5_g10 end; export IntelCore_i5_10400
abstract type IntelCore_i5_10400T <: IntelCore_i5_g10 end; export IntelCore_i5_10400T
abstract type IntelCore_i5_10500 <: IntelCore_i5_g10 end; export IntelCore_i5_10500
abstract type IntelCore_i5_10500E <: IntelCore_i5_g10 end; export IntelCore_i5_10500E
abstract type IntelCore_i5_10500T <: IntelCore_i5_g10 end; export IntelCore_i5_10500T
abstract type IntelCore_i5_10500TE <: IntelCore_i5_g10 end; export IntelCore_i5_10500TE
abstract type IntelCore_i5_10600 <: IntelCore_i5_g10 end; export IntelCore_i5_10600
abstract type IntelCore_i5_10600K <: IntelCore_i5_g10 end; export IntelCore_i5_10600K
abstract type IntelCore_i5_10600T <: IntelCore_i5_g10 end; export IntelCore_i5_10600T
abstract type IntelCore_i7_10700 <: IntelCore_i7_g10 end; export IntelCore_i7_10700
abstract type IntelCore_i7_10700E <: IntelCore_i7_g10 end; export IntelCore_i7_10700E
abstract type IntelCore_i7_10700K <: IntelCore_i7_g10 end; export IntelCore_i7_10700K
abstract type IntelCore_i7_10700T <: IntelCore_i7_g10 end; export IntelCore_i7_10700T
abstract type IntelCore_i7_10700TE <: IntelCore_i7_g10 end; export IntelCore_i7_10700TE
abstract type IntelCore_i9_10900 <: IntelCore_i9_g10 end; export IntelCore_i9_10900
abstract type IntelCore_i9_10900E <: IntelCore_i9_g10 end; export IntelCore_i9_10900E
abstract type IntelCore_i9_10900K <: IntelCore_i9_g10 end; export IntelCore_i9_10900K
abstract type IntelCore_i9_10900T <: IntelCore_i9_g10 end; export IntelCore_i9_10900T
abstract type IntelCore_i9_10900TE <: IntelCore_i9_g10 end; export IntelCore_i9_10900TE
abstract type IntelCore_i9_9900KS <: IntelCore_i9_g9 end; export IntelCore_i9_9900KS
abstract type IntelCore_i3_9100E <: IntelCore_i3_g9 end; export IntelCore_i3_9100E
abstract type IntelCore_i3_9100HL <: IntelCore_i3_g9 end; export IntelCore_i3_9100HL
abstract type IntelCore_i3_9100TE <: IntelCore_i3_g9 end; export IntelCore_i3_9100TE
abstract type IntelCore_i5_9500E <: IntelCore_i5_g9 end; export IntelCore_i5_9500E
abstract type IntelCore_i5_9500TE <: IntelCore_i5_g9 end; export IntelCore_i5_9500TE
abstract type IntelCore_i7_9700E <: IntelCore_i7_g9 end; export IntelCore_i7_9700E
abstract type IntelCore_i7_9700TE <: IntelCore_i7_g9 end; export IntelCore_i7_9700TE
abstract type IntelCore_i7_9850HE <: IntelCore_i7_g9 end; export IntelCore_i7_9850HE
abstract type IntelCore_i7_9850HL <: IntelCore_i7_g9 end; export IntelCore_i7_9850HL
abstract type IntelCore_i3_9100 <: IntelCore_i3_g9 end; export IntelCore_i3_9100
abstract type IntelCore_i3_9100T <: IntelCore_i3_g9 end; export IntelCore_i3_9100T
abstract type IntelCore_i3_9300 <: IntelCore_i3_g9 end; export IntelCore_i3_9300
abstract type IntelCore_i3_9300T <: IntelCore_i3_g9 end; export IntelCore_i3_9300T
abstract type IntelCore_i3_9320 <: IntelCore_i3_g9 end; export IntelCore_i3_9320
abstract type IntelCore_i3_9350K <: IntelCore_i3_g9 end; export IntelCore_i3_9350K
abstract type IntelCore_i5_9400H <: IntelCore_i5_g9 end; export IntelCore_i5_9400H
abstract type IntelCore_i5_9400T <: IntelCore_i5_g9 end; export IntelCore_i5_9400T
abstract type IntelCore_i5_9500 <: IntelCore_i5_g9 end; export IntelCore_i5_9500
abstract type IntelCore_i5_9500T <: IntelCore_i5_g9 end; export IntelCore_i5_9500T
abstract type IntelCore_i5_9600 <: IntelCore_i5_g9 end; export IntelCore_i5_9600
abstract type IntelCore_i5_9600T <: IntelCore_i5_g9 end; export IntelCore_i5_9600T
abstract type IntelCore_i7_9700 <: IntelCore_i7_g9 end; export IntelCore_i7_9700
abstract type IntelCore_i7_9700T <: IntelCore_i7_g9 end; export IntelCore_i7_9700T
abstract type IntelCore_i9_9880H <: IntelCore_i9_g9 end; export IntelCore_i9_9880H
abstract type IntelCore_i9_9900 <: IntelCore_i9_g9 end; export IntelCore_i9_9900
abstract type IntelCore_i9_9900T <: IntelCore_i9_g9 end; export IntelCore_i9_9900T
abstract type IntelCore_i5_9400 <: IntelCore_i5_g9 end; export IntelCore_i5_9400
abstract type IntelCore_i5_9600K <: IntelCore_i5_g9 end; export IntelCore_i5_9600K
abstract type IntelCore_i7_9700K <: IntelCore_i7_g9 end; export IntelCore_i7_9700K
abstract type IntelCore_i9_9900K <: IntelCore_i9_g9 end; export IntelCore_i9_9900K
abstract type IntelCore_i3_8100B <: IntelCore_i3_g8 end; export IntelCore_i3_8100B
abstract type IntelCore_i3_8100H <: IntelCore_i3_g8 end; export IntelCore_i3_8100H
abstract type IntelCore_i7_8086K <: IntelCore_i7_g8 end; export IntelCore_i7_8086K
abstract type IntelCore_i3_8100T <: IntelCore_i3_g8 end; export IntelCore_i3_8100T
abstract type IntelCore_i3_8300 <: IntelCore_i3_g8 end; export IntelCore_i3_8300
abstract type IntelCore_i3_8300T <: IntelCore_i3_g8 end; export IntelCore_i3_8300T
abstract type IntelCore_i5_8300H <: IntelCore_i5_g8 end; export IntelCore_i5_8300H
abstract type IntelCore_i5_8400 <: IntelCore_i5_g8 end; export IntelCore_i5_8400
abstract type IntelCore_i5_8400B <: IntelCore_i5_g8 end; export IntelCore_i5_8400B
abstract type IntelCore_i5_8400H <: IntelCore_i5_g8 end; export IntelCore_i5_8400H
abstract type IntelCore_i5_8400T <: IntelCore_i5_g8 end; export IntelCore_i5_8400T
abstract type IntelCore_i5_8500 <: IntelCore_i5_g8 end; export IntelCore_i5_8500
abstract type IntelCore_i5_8500B <: IntelCore_i5_g8 end; export IntelCore_i5_8500B
abstract type IntelCore_i5_8500T <: IntelCore_i5_g8 end; export IntelCore_i5_8500T
abstract type IntelCore_i5_8600 <: IntelCore_i5_g8 end; export IntelCore_i5_8600
abstract type IntelCore_i5_8600T <: IntelCore_i5_g8 end; export IntelCore_i5_8600T
abstract type IntelCore_i7_8700 <: IntelCore_i7_g8 end; export IntelCore_i7_8700
abstract type IntelCore_i7_8700B <: IntelCore_i7_g8 end; export IntelCore_i7_8700B
abstract type IntelCore_i7_8700T <: IntelCore_i7_g8 end; export IntelCore_i7_8700T
abstract type IntelCore_i7_8750H <: IntelCore_i7_g8 end; export IntelCore_i7_8750H
abstract type IntelCore_i7_8850H <: IntelCore_i7_g8 end; export IntelCore_i7_8850H
abstract type IntelCore_i9_8950HK <: IntelCore_i9_g8 end; export IntelCore_i9_8950HK
abstract type IntelCore_i3_8100 <: IntelCore_i3_g8 end; export IntelCore_i3_8100
abstract type IntelCore_i3_8350K <: IntelCore_i3_g8 end; export IntelCore_i3_8350K
abstract type IntelCore_i5_8600K <: IntelCore_i5_g8 end; export IntelCore_i5_8600K
abstract type IntelCore_i7_8700K <: IntelCore_i7_g8 end; export IntelCore_i7_8700K
abstract type IntelCore_i3_8140U <: IntelCore_i3_g8 end; export IntelCore_i3_8140U
abstract type IntelCore_i5_8260U <: IntelCore_i5_g8 end; export IntelCore_i5_8260U
abstract type IntelCore_i3_8145UE <: IntelCore_i3_g8 end; export IntelCore_i3_8145UE
abstract type IntelCore_i5_8365UE <: IntelCore_i5_g8 end; export IntelCore_i5_8365UE
abstract type IntelCore_i7_8665UE <: IntelCore_i7_g8 end; export IntelCore_i7_8665UE
abstract type IntelCore_i3_8130U <: IntelCore_i3_g8 end; export IntelCore_i3_8130U
abstract type IntelCore_i5_8250U <: IntelCore_i5_g8 end; export IntelCore_i5_8250U
abstract type IntelCore_i5_8350U <: IntelCore_i5_g8 end; export IntelCore_i5_8350U
abstract type IntelCore_i7_8550U <: IntelCore_i7_g8 end; export IntelCore_i7_8550U
abstract type IntelCore_i7_8650U <: IntelCore_i7_g8 end; export IntelCore_i7_8650U
abstract type IntelCore_i5_8310Y <: IntelCore_i5_g8 end; export IntelCore_i5_8310Y
abstract type IntelCore_i5_8210Y <: IntelCore_i5_g8 end; export IntelCore_i5_8210Y
abstract type IntelCore_i3_10100Y <: IntelCore_i3_g10 end; export IntelCore_i3_10100Y
abstract type IntelCore_i5_8200Y <: IntelCore_i5_g8 end; export IntelCore_i5_8200Y
abstract type IntelCore_i7_8500Y <: IntelCore_i7_g8 end; export IntelCore_i7_8500Y
abstract type IntelCore_M3_8100Y <: IntelCore_M_g8 end; export IntelCore_M3_8100Y
abstract type IntelCore_i3_12300HE <: IntelCore_i3_g12 end; export IntelCore_i3_12300HE
abstract type IntelCore_i3_11100HE <: IntelCore_i3_g11 end; export IntelCore_i3_11100HE
abstract type IntelCore_i5_11500HE <: IntelCore_i5_g11 end; export IntelCore_i5_11500HE
abstract type IntelCore_i7_11850HE <: IntelCore_i7_g11 end; export IntelCore_i7_11850HE
abstract type IntelCore_i7_11600H <: IntelCore_i7_g11 end; export IntelCore_i7_11600H
abstract type IntelCore_i5_11260H <: IntelCore_i5_g11 end; export IntelCore_i5_11260H
abstract type IntelCore_i5_11500H <: IntelCore_i5_g11 end; export IntelCore_i5_11500H
abstract type IntelCore_i7_11850H <: IntelCore_i7_g11 end; export IntelCore_i7_11850H
abstract type IntelCore_i9_11900H <: IntelCore_i9_g11 end; export IntelCore_i9_11900H
abstract type IntelCore_i9_11950H <: IntelCore_i9_g11 end; export IntelCore_i9_11950H
abstract type IntelCore_i9_11980HK <: IntelCore_i9_g11 end; export IntelCore_i9_11980HK
abstract type IntelCore_i3_1115G4E <: IntelCore_i3_g11 end; export IntelCore_i3_1115G4E
abstract type IntelCore_i3_1115GRE <: IntelCore_i3_g11 end; export IntelCore_i3_1115GRE
abstract type IntelCore_i3_1120G4 <: IntelCore_i3_g11 end; export IntelCore_i3_1120G4
abstract type IntelCore_i3_1125G4 <: IntelCore_i3_g11 end; export IntelCore_i3_1125G4
abstract type IntelCore_i3_1110G4 <: IntelCore_i3_g11 end; export IntelCore_i3_1110G4
abstract type IntelCore_i5_10500H <: IntelCore_i5_g10 end; export IntelCore_i5_10500H
abstract type IntelCore_i7_10870H <: IntelCore_i7_g10 end; export IntelCore_i7_10870H
abstract type IntelCore_i5_10200H <: IntelCore_i5_g10 end; export IntelCore_i5_10200H
abstract type IntelCore_i5_10310U <: IntelCore_i5_g10 end; export IntelCore_i5_10310U
abstract type IntelCore_i7_10610U <: IntelCore_i7_g10 end; export IntelCore_i7_10610U
abstract type IntelCore_i7_10810U <: IntelCore_i7_g10 end; export IntelCore_i7_10810U
abstract type IntelCore_i9_10885H <: IntelCore_i9_g10 end; export IntelCore_i9_10885H
abstract type IntelCore_i5_10300H <: IntelCore_i5_g10 end; export IntelCore_i5_10300H
abstract type IntelCore_i5_10400H <: IntelCore_i5_g10 end; export IntelCore_i5_10400H
abstract type IntelCore_i7_10750H <: IntelCore_i7_g10 end; export IntelCore_i7_10750H
abstract type IntelCore_i7_10850H <: IntelCore_i7_g10 end; export IntelCore_i7_10850H
abstract type IntelCore_i7_10875H <: IntelCore_i7_g10 end; export IntelCore_i7_10875H
abstract type IntelCore_i9_10980HK <: IntelCore_i9_g10 end; export IntelCore_i9_10980HK
abstract type IntelCore_i3_10110Y <: IntelCore_i3_g10 end; export IntelCore_i3_10110Y
abstract type IntelCore_i5_10210Y <: IntelCore_i5_g10 end; export IntelCore_i5_10210Y
abstract type IntelCore_i5_10310Y <: IntelCore_i5_g10 end; export IntelCore_i5_10310Y
abstract type IntelCore_i7_10510U <: IntelCore_i7_g10 end; export IntelCore_i7_10510U
abstract type IntelCore_i7_10510Y <: IntelCore_i7_g10 end; export IntelCore_i7_10510Y
abstract type IntelCore_i3_1000G1 <: IntelCore_i3_g10 end; export IntelCore_i3_1000G1
abstract type IntelCore_i3_1005G1 <: IntelCore_i3_g10 end; export IntelCore_i3_1005G1
abstract type IntelCore_i5_1035G1 <: IntelCore_i5_g10 end; export IntelCore_i5_1035G1
abstract type IntelCore_i5_6585R <: IntelCore_i5_g5 end; export IntelCore_i5_6585R
abstract type IntelCore_i5_6685R <: IntelCore_i5_g5 end; export IntelCore_i5_6685R
abstract type IntelCore_i7_6785R <: IntelCore_i7_g6 end; export IntelCore_i7_6785R
abstract type IntelCore_i5_6350HQ <: IntelCore_i5_g5 end; export IntelCore_i5_6350HQ
abstract type IntelCore_i7_6770HQ <: IntelCore_i7_g6 end; export IntelCore_i7_6770HQ
abstract type IntelCore_i7_6870HQ <: IntelCore_i7_g6 end; export IntelCore_i7_6870HQ
abstract type IntelCore_i7_6970HQ <: IntelCore_i7_g6 end; export IntelCore_i7_6970HQ
abstract type IntelCore_i5_5350H <: IntelCore_i5_g5 end; export IntelCore_i5_5350H
abstract type IntelCore_i5_5575R <: IntelCore_i5_g5 end; export IntelCore_i5_5575R
abstract type IntelCore_i5_5675C <: IntelCore_i5_g5 end; export IntelCore_i5_5675C
abstract type IntelCore_i5_5675R <: IntelCore_i5_g5 end; export IntelCore_i5_5675R
abstract type IntelCore_i7_5700HQ <: IntelCore_i7_g5 end; export IntelCore_i7_5700HQ
abstract type IntelCore_i7_5750HQ <: IntelCore_i7_g5 end; export IntelCore_i7_5750HQ
abstract type IntelCore_i7_5775C <: IntelCore_i7_g5 end; export IntelCore_i7_5775C
abstract type IntelCore_i7_5775R <: IntelCore_i7_g5 end; export IntelCore_i7_5775R
abstract type IntelCore_i7_5850EQ <: IntelCore_i7_g5 end; export IntelCore_i7_5850EQ
abstract type IntelCore_i7_5850HQ <: IntelCore_i7_g5 end; export IntelCore_i7_5850HQ
abstract type IntelCore_i7_5950HQ <: IntelCore_i7_g5 end; export IntelCore_i7_5950HQ
abstract type IntelCore_i7_4770HQ <: IntelCore_i7_g4 end; export IntelCore_i7_4770HQ
abstract type IntelCore_i7_4870HQ <: IntelCore_i7_g4 end; export IntelCore_i7_4870HQ
abstract type IntelCore_i7_4980HQ <: IntelCore_i7_g4 end; export IntelCore_i7_4980HQ
abstract type IntelCore_i7_4760HQ <: IntelCore_i7_g4 end; export IntelCore_i7_4760HQ
abstract type IntelCore_i7_4860HQ <: IntelCore_i7_g4 end; export IntelCore_i7_4860HQ
abstract type IntelCore_i7_4960HQ <: IntelCore_i7_g4 end; export IntelCore_i7_4960HQ
abstract type IntelCore_i7_4750HQ <: IntelCore_i7_g4 end; export IntelCore_i7_4750HQ
abstract type IntelCore_i7_4850HQ <: IntelCore_i7_g4 end; export IntelCore_i7_4850HQ
abstract type IntelCore_i7_4950HQ <: IntelCore_i7_g4 end; export IntelCore_i7_4950HQ
abstract type IntelCore_i5_4570R <: IntelCore_i5_g4 end; export IntelCore_i5_4570R
abstract type IntelCore_i5_4670R <: IntelCore_i5_g4 end; export IntelCore_i5_4670R
abstract type IntelCore_i7_4770R <: IntelCore_i7_g4 end; export IntelCore_i7_4770R
abstract type IntelCore_i9_10900X <: IntelCore_X end; export IntelCore_i9_10900X
abstract type IntelCore_i9_10920X <: IntelCore_X end; export IntelCore_i9_10920X
abstract type IntelCore_i9_10940X <: IntelCore_X end; export IntelCore_i9_10940X
abstract type IntelCore_i9_10980XE <: IntelCore_X end; export IntelCore_i9_10980XE
abstract type IntelCore_i7_9800X <: IntelCore_X end; export IntelCore_i7_9800X
abstract type IntelCore_i9_9820X <: IntelCore_X end; export IntelCore_i9_9820X
abstract type IntelCore_i9_9900X <: IntelCore_X end; export IntelCore_i9_9900X
abstract type IntelCore_i9_9920X <: IntelCore_X end; export IntelCore_i9_9920X
abstract type IntelCore_i9_9940X <: IntelCore_X end; export IntelCore_i9_9940X
abstract type IntelCore_i9_9960X <: IntelCore_X end; export IntelCore_i9_9960X
abstract type IntelCore_i9_9980XE <: IntelCore_X end; export IntelCore_i9_9980XE
abstract type IntelCore_i9_7940X <: IntelCore_X end; export IntelCore_i9_7940X
abstract type IntelCore_i9_7960X <: IntelCore_X end; export IntelCore_i9_7960X
abstract type IntelCore_i9_7980XE <: IntelCore_X end; export IntelCore_i9_7980XE
abstract type IntelCore_i9_7920X <: IntelCore_X end; export IntelCore_i9_7920X
abstract type IntelCore_i5_7640X <: IntelCore_X end; export IntelCore_i5_7640X
abstract type IntelCore_i7_7740X <: IntelCore_X end; export IntelCore_i7_7740X
abstract type IntelCore_i7_7800X <: IntelCore_X end; export IntelCore_i7_7800X
abstract type IntelCore_i7_7820X <: IntelCore_X end; export IntelCore_i7_7820X
abstract type IntelCore_i9_7900X <: IntelCore_X end; export IntelCore_i9_7900X
abstract type IntelCore_i7_6800K <: IntelCore_X end; export IntelCore_i7_6800K
abstract type IntelCore_i7_6850K <: IntelCore_X end; export IntelCore_i7_6850K
abstract type IntelCore_i7_6900K <: IntelCore_X end; export IntelCore_i7_6900K
abstract type IntelCore_i7_6950X <: IntelCore_X end; export IntelCore_i7_6950X
abstract type IntelCore_i7_5820K <: IntelCore_X end; export IntelCore_i7_5820K
abstract type IntelCore_i7_5930K <: IntelCore_X end; export IntelCore_i7_5930K
abstract type IntelCore_i7_5960X <: IntelCore_X end; export IntelCore_i7_5960X
abstract type IntelCore_i7_4820K <: IntelCore_X end; export IntelCore_i7_4820K
abstract type IntelCore_i7_4930K <: IntelCore_X end; export IntelCore_i7_4930K
abstract type IntelCore_i7_4960X <: IntelCore_X end; export IntelCore_i7_4960X
abstract type IntelCore_i7_3970X <: IntelCore_X end; export IntelCore_i7_3970X
abstract type IntelCore_i7_3820 <: IntelCore_X end; export IntelCore_i7_3820
abstract type IntelCore_i7_3930K <: IntelCore_X end; export IntelCore_i7_3930K
abstract type IntelCore_i7_3960X <: IntelCore_X end; export IntelCore_i7_3960X
abstract type IntelCore_i9_12900HX <: IntelCore_i9_g12 end; export IntelCore_i9_12900HX
abstract type IntelCore_i9_12950HX <: IntelCore_i9_g12 end; export IntelCore_i9_12950HX
abstract type IntelCore_i9_12900KS <: IntelCore_i9_g12 end; export IntelCore_i9_12900KS
abstract type IntelCore_i9_12900E <: IntelCore_i9_g12 end; export IntelCore_i9_12900E
abstract type IntelCore_i9_12900F <: IntelCore_i9_g12 end; export IntelCore_i9_12900F
abstract type IntelCore_i9_12900H <: IntelCore_i9_g12 end; export IntelCore_i9_12900H
abstract type IntelCore_i9_12900HK <: IntelCore_i9_g12 end; export IntelCore_i9_12900HK
abstract type IntelCore_i9_12900T <: IntelCore_i9_g12 end; export IntelCore_i9_12900T
abstract type IntelCore_i9_12900TE <: IntelCore_i9_g12 end; export IntelCore_i9_12900TE
abstract type IntelCore_i9_12900K <: IntelCore_i9_g12 end; export IntelCore_i9_12900K
abstract type IntelCore_i9_12900KF <: IntelCore_i9_g12 end; export IntelCore_i9_12900KF
abstract type IntelCore_i9_11900 <: IntelCore_i9_g11 end; export IntelCore_i9_11900
abstract type IntelCore_i9_11900F <: IntelCore_i9_g11 end; export IntelCore_i9_11900F
abstract type IntelCore_i9_11900K <: IntelCore_i9_g11 end; export IntelCore_i9_11900K
abstract type IntelCore_i9_11900KF <: IntelCore_i9_g11 end; export IntelCore_i9_11900KF
abstract type IntelCore_i9_11900T <: IntelCore_i9_g11 end; export IntelCore_i9_11900T
abstract type IntelCore_i9_10900F <: IntelCore_i9_g10 end; export IntelCore_i9_10900F
abstract type IntelCore_i9_10900KF <: IntelCore_i9_g10 end; export IntelCore_i9_10900KF
abstract type IntelCore_i9_9900KF <: IntelCore_i9_g9 end; export IntelCore_i9_9900KF
abstract type IntelCore_i7_12650HX <: IntelCore_i7_g12 end; export IntelCore_i7_12650HX
abstract type IntelCore_i7_12800HX <: IntelCore_i7_g12 end; export IntelCore_i7_12800HX
abstract type IntelCore_i7_12850HX <: IntelCore_i7_g12 end; export IntelCore_i7_12850HX
abstract type IntelCore_i7_1265UE <: IntelCore_i7_g12 end; export IntelCore_i7_1265UE
abstract type IntelCore_i7_1270PE <: IntelCore_i7_g12 end; export IntelCore_i7_1270PE
abstract type IntelCore_i7_1250U <: IntelCore_i7_g12 end; export IntelCore_i7_1250U
abstract type IntelCore_i7_1260U <: IntelCore_i7_g12 end; export IntelCore_i7_1260U
abstract type IntelCore_i7_1270P <: IntelCore_i7_g12 end; export IntelCore_i7_1270P
abstract type IntelCore_i7_1280P <: IntelCore_i7_g12 end; export IntelCore_i7_1280P
abstract type IntelCore_i7_12650H <: IntelCore_i7_g12 end; export IntelCore_i7_12650H
abstract type IntelCore_i7_12700E <: IntelCore_i7_g12 end; export IntelCore_i7_12700E
abstract type IntelCore_i7_12700F <: IntelCore_i7_g12 end; export IntelCore_i7_12700F
abstract type IntelCore_i7_12700H <: IntelCore_i7_g12 end; export IntelCore_i7_12700H
abstract type IntelCore_i7_12700T <: IntelCore_i7_g12 end; export IntelCore_i7_12700T
abstract type IntelCore_i7_12700TE <: IntelCore_i7_g12 end; export IntelCore_i7_12700TE
abstract type IntelCore_i7_12800H <: IntelCore_i7_g12 end; export IntelCore_i7_12800H
abstract type IntelCore_i7_12800HE <: IntelCore_i7_g12 end; export IntelCore_i7_12800HE
abstract type IntelCore_i7_12700K <: IntelCore_i7_g12 end; export IntelCore_i7_12700K
abstract type IntelCore_i7_12700KF <: IntelCore_i7_g12 end; export IntelCore_i7_12700KF
abstract type IntelCore_i7_11390H <: IntelCore_i7_g11 end; export IntelCore_i7_11390H
abstract type IntelCore_i7_1195G7 <: IntelCore_i7_g11 end; export IntelCore_i7_1195G7
abstract type IntelCore_i7_11700 <: IntelCore_i7_g11 end; export IntelCore_i7_11700
abstract type IntelCore_i7_11700F <: IntelCore_i7_g11 end; export IntelCore_i7_11700F
abstract type IntelCore_i7_11700K <: IntelCore_i7_g11 end; export IntelCore_i7_11700K
abstract type IntelCore_i7_11700KF <: IntelCore_i7_g11 end; export IntelCore_i7_11700KF
abstract type IntelCore_i7_11700T <: IntelCore_i7_g11 end; export IntelCore_i7_11700T
abstract type IntelCore_i7_10700F <: IntelCore_i7_g10 end; export IntelCore_i7_10700F
abstract type IntelCore_i7_10700KF <: IntelCore_i7_g10 end; export IntelCore_i7_10700KF
abstract type IntelCore_i7_9700F <: IntelCore_i7_g9 end; export IntelCore_i7_9700F
abstract type IntelCore_i7_9750HF <: IntelCore_i7_g9 end; export IntelCore_i7_9750HF
abstract type IntelCore_i7_9700KF <: IntelCore_i7_g9 end; export IntelCore_i7_9700KF
abstract type IntelCore_i7_5700EQ <: IntelCore_i7_g5 end; export IntelCore_i7_5700EQ
abstract type IntelCore_i7_4700EC <: IntelCore_i7_g4 end; export IntelCore_i7_4700EC
abstract type IntelCore_i7_4702EC <: IntelCore_i7_g4 end; export IntelCore_i7_4702EC
abstract type IntelCore_i5_12450HX <: IntelCore_i5_g12 end; export IntelCore_i5_12450HX
abstract type IntelCore_i5_12600HX <: IntelCore_i5_g12 end; export IntelCore_i5_12600HX
abstract type IntelCore_i5_1245UE <: IntelCore_i5_g12 end; export IntelCore_i5_1245UE
abstract type IntelCore_i5_1250PE <: IntelCore_i5_g12 end; export IntelCore_i5_1250PE
abstract type IntelCore_i5_1230U <: IntelCore_i5_g12 end; export IntelCore_i5_1230U
abstract type IntelCore_i5_1240U <: IntelCore_i5_g12 end; export IntelCore_i5_1240U
abstract type IntelCore_i5_1250P <: IntelCore_i5_g12 end; export IntelCore_i5_1250P
abstract type IntelCore_i5_12400 <: IntelCore_i5_g12 end; export IntelCore_i5_12400
abstract type IntelCore_i5_12400F <: IntelCore_i5_g12 end; export IntelCore_i5_12400F
abstract type IntelCore_i5_12400T <: IntelCore_i5_g12 end; export IntelCore_i5_12400T
abstract type IntelCore_i5_12450H <: IntelCore_i5_g12 end; export IntelCore_i5_12450H
abstract type IntelCore_i5_12500 <: IntelCore_i5_g12 end; export IntelCore_i5_12500
abstract type IntelCore_i5_12500E <: IntelCore_i5_g12 end; export IntelCore_i5_12500E
abstract type IntelCore_i5_12500H <: IntelCore_i5_g12 end; export IntelCore_i5_12500H
abstract type IntelCore_i5_12500T <: IntelCore_i5_g12 end; export IntelCore_i5_12500T
abstract type IntelCore_i5_12500TE <: IntelCore_i5_g12 end; export IntelCore_i5_12500TE
abstract type IntelCore_i5_12600 <: IntelCore_i5_g12 end; export IntelCore_i5_12600
abstract type IntelCore_i5_12600H <: IntelCore_i5_g12 end; export IntelCore_i5_12600H
abstract type IntelCore_i5_12600HE <: IntelCore_i5_g12 end; export IntelCore_i5_12600HE
abstract type IntelCore_i5_12600T <: IntelCore_i5_g12 end; export IntelCore_i5_12600T
abstract type IntelCore_i5_12600K <: IntelCore_i5_g12 end; export IntelCore_i5_12600K
abstract type IntelCore_i5_12600KF <: IntelCore_i5_g12 end; export IntelCore_i5_12600KF
abstract type IntelCore_i5_11320H <: IntelCore_i5_g11 end; export IntelCore_i5_11320H
abstract type IntelCore_i5_1155G7 <: IntelCore_i5_g11 end; export IntelCore_i5_1155G7
abstract type IntelCore_i5_11400 <: IntelCore_i5_g11 end; export IntelCore_i5_11400
abstract type IntelCore_i5_11400F <: IntelCore_i5_g11 end; export IntelCore_i5_11400F
abstract type IntelCore_i5_11400T <: IntelCore_i5_g11 end; export IntelCore_i5_11400T
abstract type IntelCore_i5_11500 <: IntelCore_i5_g11 end; export IntelCore_i5_11500
abstract type IntelCore_i5_11500T <: IntelCore_i5_g11 end; export IntelCore_i5_11500T
abstract type IntelCore_i5_11600 <: IntelCore_i5_g11 end; export IntelCore_i5_11600
abstract type IntelCore_i5_11600K <: IntelCore_i5_g11 end; export IntelCore_i5_11600K
abstract type IntelCore_i5_11600KF <: IntelCore_i5_g11 end; export IntelCore_i5_11600KF
abstract type IntelCore_i5_11600T <: IntelCore_i5_g11 end; export IntelCore_i5_11600T
abstract type IntelCore_i5_10400F <: IntelCore_i5_g10 end; export IntelCore_i5_10400F
abstract type IntelCore_i5_10600KF <: IntelCore_i5_g10 end; export IntelCore_i5_10600KF
abstract type IntelCore_i5_9500F <: IntelCore_i5_g9 end; export IntelCore_i5_9500F
abstract type IntelCore_i5_9300HF <: IntelCore_i5_g9 end; export IntelCore_i5_9300HF
abstract type IntelCore_i5_9400F <: IntelCore_i5_g9 end; export IntelCore_i5_9400F
abstract type IntelCore_i5_9600KF <: IntelCore_i5_g9 end; export IntelCore_i5_9600KF
abstract type IntelCore_i5_4402EC <: IntelCore_i5_g4 end; export IntelCore_i5_4402EC
abstract type IntelCore_i3_1215UE <: IntelCore_i3_g12 end; export IntelCore_i3_1215UE
abstract type IntelCore_i3_1220PE <: IntelCore_i3_g12 end; export IntelCore_i3_1220PE
abstract type IntelCore_i3_1210U <: IntelCore_i3_g12 end; export IntelCore_i3_1210U
abstract type IntelCore_i3_1220P <: IntelCore_i3_g12 end; export IntelCore_i3_1220P
abstract type IntelCore_i3_12100 <: IntelCore_i3_g12 end; export IntelCore_i3_12100
abstract type IntelCore_i3_12100E <: IntelCore_i3_g12 end; export IntelCore_i3_12100E
abstract type IntelCore_i3_12100F <: IntelCore_i3_g12 end; export IntelCore_i3_12100F
abstract type IntelCore_i3_12100T <: IntelCore_i3_g12 end; export IntelCore_i3_12100T
abstract type IntelCore_i3_12100TE <: IntelCore_i3_g12 end; export IntelCore_i3_12100TE
abstract type IntelCore_i3_12300 <: IntelCore_i3_g12 end; export IntelCore_i3_12300
abstract type IntelCore_i3_12300T <: IntelCore_i3_g12 end; export IntelCore_i3_12300T
abstract type IntelCore_i3_10105F <: IntelCore_i3_g10 end; export IntelCore_i3_10105F
abstract type IntelCore_i3_10100F <: IntelCore_i3_g10 end; export IntelCore_i3_10100F
abstract type IntelCore_i3_9100F <: IntelCore_i3_g9 end; export IntelCore_i3_9100F
abstract type IntelCore_i3_9350KF <: IntelCore_i3_g9 end; export IntelCore_i3_9350KF            

