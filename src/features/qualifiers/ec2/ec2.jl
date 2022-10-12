# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

using HTTP
using JSON


# maintainer types
abstract type AmazonEC2 <: CloudProvider end; export AmazonEC2

# locale types


# machine family types

abstract type EC2Family <: MachineFamily end

abstract type EC2Family_General <: EC2Family end
abstract type EC2Family_Compute <: EC2Family end
abstract type EC2Family_Accelerated <: EC2Family end
abstract type EC2Family_Memory <: EC2Family end
abstract type EC2Family_Storage <: EC2Family end

# machine type types and sizes

abstract type EC2Type <: MachineType end

## general purpose instances

abstract type EC2Type_MAC <: EC2Type end
abstract type EC2Type_MAC1 <: EC2Type_MAC end
abstract type EC2Type_MAC2 <: EC2Type_MAC end

abstract type EC2Type_MAC1_Metal <: EC2Type_MAC1 end
abstract type EC2Type_MAC2_Metal <: EC2Type_MAC2 end

abstract type EC2Type_T4G <: EC2Type end

abstract type EC2Type_T4G_Nano <: EC2Type_T4G end
abstract type EC2Type_T4G_Micro <: EC2Type_T4G end
abstract type EC2Type_T4G_Small <: EC2Type_T4G end
abstract type EC2Type_T4G_Large <: EC2Type_T4G end
abstract type EC2Type_T4G_Medium <: EC2Type_T4G end
abstract type EC2Type_T4G_xLarge <: EC2Type_T4G end
abstract type EC2Type_T4G_2xLarge <: EC2Type_T4G end

abstract type EC2Type_T3 <: EC2Type end
abstract type EC2Type_T3A <: EC2Type_T3 end

abstract type EC2Type_T3_Nano <: EC2Type_T3 end
abstract type EC2Type_T3_Micro <: EC2Type_T3 end
abstract type EC2Type_T3_Small <: EC2Type_T3 end
abstract type EC2Type_T3_Large <: EC2Type_T3 end
abstract type EC2Type_T3_Medium <: EC2Type_T3 end
abstract type EC2Type_T3_xLarge <: EC2Type_T3 end
abstract type EC2Type_T3_2xLarge <: EC2Type_T3 end

abstract type EC2Type_T3A_Nano <: EC2Type_T3A end
abstract type EC2Type_T3A_Micro <: EC2Type_T3A end
abstract type EC2Type_T3A_Small <: EC2Type_T3A end
abstract type EC2Type_T3A_Large <: EC2Type_T3A end
abstract type EC2Type_T3A_Medium <: EC2Type_T3A end
abstract type EC2Type_T3A_xLarge <: EC2Type_T3A end
abstract type EC2Type_T3A_2xLarge <: EC2Type_T3A end

abstract type EC2Type_T2 <: EC2Type end

abstract type EC2Type_T2_Nano <: EC2Type_T2 end
abstract type EC2Type_T2_Micro <: EC2Type_T2 end
abstract type EC2Type_T2_Small <: EC2Type_T2 end
abstract type EC2Type_T2_Large <: EC2Type_T2 end
abstract type EC2Type_T2_Medium <: EC2Type_T2 end
abstract type EC2Type_T2_xLarge <: EC2Type_T2 end
abstract type EC2Type_T2_2xLarge <: EC2Type_T2 end

abstract type EC2Type_M6 <: EC2Type end
abstract type EC2Type_M6G <: EC2Type_M6 end
abstract type EC2Type_M6I <: EC2Type_M6 end
abstract type EC2Type_M6A <: EC2Type_M6 end
abstract type EC2Type_M6GD <: EC2Type_M6G end
abstract type EC2Type_M6ID <: EC2Type_M6I end

abstract type EC2Type_M6G_Metal <: EC2Type_M6G end
abstract type EC2Type_M6G_Large <: EC2Type_M6G end
abstract type EC2Type_M6G_Medium <: EC2Type_M6G end
abstract type EC2Type_M6G_xLarge <: EC2Type_M6G end
abstract type EC2Type_M6G_2xLarge <: EC2Type_M6G end
abstract type EC2Type_M6G_4xLarge <: EC2Type_M6G end
abstract type EC2Type_M6G_8xLarge <: EC2Type_M6G end
abstract type EC2Type_M6G_12xLarge <: EC2Type_M6G end
abstract type EC2Type_M6G_16xLarge <: EC2Type_M6G end

abstract type EC2Type_M6GD_Metal <: EC2Type_M6GD end
abstract type EC2Type_M6GD_Large <: EC2Type_M6GD end
abstract type EC2Type_M6GD_Medium <: EC2Type_M6GD end
abstract type EC2Type_M6GD_xLarge <: EC2Type_M6GD end
abstract type EC2Type_M6GD_2xLarge <: EC2Type_M6GD end
abstract type EC2Type_M6GD_4xLarge <: EC2Type_M6GD end
abstract type EC2Type_M6GD_8xLarge <: EC2Type_M6GD end
abstract type EC2Type_M6GD_12xLarge <: EC2Type_M6GD end
abstract type EC2Type_M6GD_16xLarge <: EC2Type_M6GD end

abstract type EC2Type_M6I_Metal <: EC2Type_M6I end
abstract type EC2Type_M6I_Large <: EC2Type_M6I end
abstract type EC2Type_M6I_xLarge <: EC2Type_M6I end
abstract type EC2Type_M6I_2xLarge <: EC2Type_M6I end
abstract type EC2Type_M6I_4xLarge <: EC2Type_M6I end
abstract type EC2Type_M6I_8xLarge <: EC2Type_M6I end
abstract type EC2Type_M6I_12xLarge <: EC2Type_M6I end
abstract type EC2Type_M6I_16xLarge <: EC2Type_M6I end
abstract type EC2Type_M6I_24xLarge <: EC2Type_M6I end
abstract type EC2Type_M6I_32xLarge <: EC2Type_M6I end

abstract type EC2Type_M6ID_Metal <: EC2Type_M6ID end
abstract type EC2Type_M6ID_Large <: EC2Type_M6ID end
abstract type EC2Type_M6ID_xLarge <: EC2Type_M6ID end
abstract type EC2Type_M6ID_2xLarge <: EC2Type_M6ID end
abstract type EC2Type_M6ID_4xLarge <: EC2Type_M6ID end
abstract type EC2Type_M6ID_8xLarge <: EC2Type_M6ID end
abstract type EC2Type_M6ID_12xLarge <: EC2Type_M6ID end
abstract type EC2Type_M6ID_16xLarge <: EC2Type_M6ID end
abstract type EC2Type_M6ID_24xLarge <: EC2Type_M6ID end
abstract type EC2Type_M6ID_32xLarge <: EC2Type_M6ID end

abstract type EC2Type_M6A_Metal <: EC2Type_M6A end
abstract type EC2Type_M6A_Large <: EC2Type_M6A end
abstract type EC2Type_M6A_xLarge <: EC2Type_M6A end
abstract type EC2Type_M6A_2xLarge <: EC2Type_M6A end
abstract type EC2Type_M6A_4xLarge <: EC2Type_M6A end
abstract type EC2Type_M6A_8xLarge <: EC2Type_M6A end
abstract type EC2Type_M6A_12xLarge <: EC2Type_M6A end
abstract type EC2Type_M6A_16xLarge <: EC2Type_M6A end
abstract type EC2Type_M6A_24xLarge <: EC2Type_M6A end
abstract type EC2Type_M6A_32xLarge <: EC2Type_M6A end
abstract type EC2Type_M6A_48xLarge <: EC2Type_M6A end

abstract type EC2Type_M5 <: EC2Type end
abstract type EC2Type_M5D <: EC2Type_M5 end
abstract type EC2Type_M5A <: EC2Type_M5 end
abstract type EC2Type_M5N <: EC2Type_M5 end
abstract type EC2Type_M5ZN <: EC2Type_M5 end
abstract type EC2Type_M5AD <: EC2Type_M5A end
abstract type EC2Type_M5DN <: EC2Type_M5N end

abstract type EC2Type_M5_Metal <: EC2Type_M5 end
abstract type EC2Type_M5_Large <: EC2Type_M5 end
abstract type EC2Type_M5_xLarge <: EC2Type_M5 end
abstract type EC2Type_M5_2xLarge <: EC2Type_M5 end
abstract type EC2Type_M5_4xLarge <: EC2Type_M5 end
abstract type EC2Type_M5_8xLarge <: EC2Type_M5 end
abstract type EC2Type_M5_12xLarge <: EC2Type_M5 end
abstract type EC2Type_M5_16xLarge <: EC2Type_M5 end
abstract type EC2Type_M5_24xLarge <: EC2Type_M5 end

abstract type EC2Type_M5D_Metal <: EC2Type_M5D end
abstract type EC2Type_M5D_Large <: EC2Type_M5D end
abstract type EC2Type_M5D_xLarge <: EC2Type_M5D end
abstract type EC2Type_M5D_2xLarge <: EC2Type_M5D end
abstract type EC2Type_M5D_4xLarge <: EC2Type_M5D end
abstract type EC2Type_M5D_8xLarge <: EC2Type_M5D end
abstract type EC2Type_M5D_12xLarge <: EC2Type_M5D end
abstract type EC2Type_M5D_16xLarge <: EC2Type_M5D end
abstract type EC2Type_M5D_24xLarge <: EC2Type_M5D end

abstract type EC2Type_M5A_Large <: EC2Type_M5A end
abstract type EC2Type_M5A_xLarge <: EC2Type_M5A end
abstract type EC2Type_M5A_2xLarge <: EC2Type_M5A end
abstract type EC2Type_M5A_4xLarge <: EC2Type_M5A end
abstract type EC2Type_M5A_8xLarge <: EC2Type_M5A end
abstract type EC2Type_M5A_12xLarge <: EC2Type_M5A end
abstract type EC2Type_M5A_16xLarge <: EC2Type_M5A end
abstract type EC2Type_M5A_24xLarge <: EC2Type_M5A end

abstract type EC2Type_M5AD_Large <: EC2Type_M5AD end
abstract type EC2Type_M5AD_xLarge <: EC2Type_M5AD end
abstract type EC2Type_M5AD_2xLarge <: EC2Type_M5AD end
abstract type EC2Type_M5AD_4xLarge <: EC2Type_M5AD end
abstract type EC2Type_M5AD_8xLarge <: EC2Type_M5AD end
abstract type EC2Type_M5AD_12xLarge <: EC2Type_M5AD end
abstract type EC2Type_M5AD_16xLarge <: EC2Type_M5AD end
abstract type EC2Type_M5AD_24xLarge <: EC2Type_M5AD end

abstract type EC2Type_M5N_Metal <: EC2Type_M5N end
abstract type EC2Type_M5N_Large <: EC2Type_M5N end
abstract type EC2Type_M5N_xLarge <: EC2Type_M5N end
abstract type EC2Type_M5N_2xLarge <: EC2Type_M5N end
abstract type EC2Type_M5N_4xLarge <: EC2Type_M5N end
abstract type EC2Type_M5N_8xLarge <: EC2Type_M5N end
abstract type EC2Type_M5N_12xLarge <: EC2Type_M5N end
abstract type EC2Type_M5N_16xLarge <: EC2Type_M5N end
abstract type EC2Type_M5N_24xLarge <: EC2Type_M5N end

abstract type EC2Type_M5DN_Metal <: EC2Type_M5DN end
abstract type EC2Type_M5DN_Large <: EC2Type_M5DN end
abstract type EC2Type_M5DN_xLarge <: EC2Type_M5DN end
abstract type EC2Type_M5DN_2xLarge <: EC2Type_M5DN end
abstract type EC2Type_M5DN_4xLarge <: EC2Type_M5DN end
abstract type EC2Type_M5DN_8xLarge <: EC2Type_M5DN end
abstract type EC2Type_M5DN_12xLarge <: EC2Type_M5DN end
abstract type EC2Type_M5DN_16xLarge <: EC2Type_M5DN end
abstract type EC2Type_M5DN_24xLarge <: EC2Type_M5DN end

abstract type EC2Type_M5ZN_Metal <: EC2Type_M5ZN end
abstract type EC2Type_M5ZN_Large <: EC2Type_M5ZN end
abstract type EC2Type_M5ZN_xLarge <: EC2Type_M5ZN end
abstract type EC2Type_M5ZN_2xLarge <: EC2Type_M5ZN end
abstract type EC2Type_M5ZN_3xLarge <: EC2Type_M5ZN end
abstract type EC2Type_M5ZN_6xLarge <: EC2Type_M5ZN end
abstract type EC2Type_M5ZN_12xLarge <: EC2Type_M5ZN end

abstract type EC2Type_M4 <: EC2Type end

abstract type EC2Type_M4_Large <: EC2Type_M4 end
abstract type EC2Type_M4_xLarge <: EC2Type_M4 end
abstract type EC2Type_M4_2xLarge <: EC2Type_M4 end
abstract type EC2Type_M4_4xLarge <: EC2Type_M4 end
abstract type EC2Type_M4_10xLarge <: EC2Type_M4 end
abstract type EC2Type_M4_16xLarge <: EC2Type_M4 end

abstract type EC2Type_A1 <: EC2Type end

abstract type EC2Type_A1_Metal <: EC2Type_A1 end
abstract type EC2Type_A1_Large <: EC2Type_A1 end
abstract type EC2Type_A1_Medium <: EC2Type_A1 end
abstract type EC2Type_A1_xLarge <: EC2Type_A1 end
abstract type EC2Type_A1_2xLarge <: EC2Type_A1 end
abstract type EC2Type_A1_4xLarge <: EC2Type_A1 end

## compute optimized instances

abstract type EC2Type_C7G <: EC2Type end

abstract type EC2Type_C7G_Large <: EC2Type_C7G end
abstract type EC2Type_C7G_Medium <: EC2Type_C7G end
abstract type EC2Type_C7G_xLarge <: EC2Type_C7G end
abstract type EC2Type_C7G_2xLarge <: EC2Type_C7G end
abstract type EC2Type_C7G_4xLarge <: EC2Type_C7G end
abstract type EC2Type_C7G_8xLarge <: EC2Type_C7G end
abstract type EC2Type_C7G_12xLarge <: EC2Type_C7G end
abstract type EC2Type_C7G_16xLarge <: EC2Type_C7G end

abstract type EC2Type_C6 <: EC2Type end
abstract type EC2Type_C6G <: EC2Type_C6 end
abstract type EC2Type_C6GN <: EC2Type_C6 end
abstract type EC2Type_C6I <: EC2Type_C6 end
abstract type EC2Type_C6A <: EC2Type_C6 end
abstract type EC2Type_C6GD <: EC2Type_C6G end
abstract type EC2Type_C6ID <: EC2Type_C6I end

abstract type EC2Type_C6G_Metal <: EC2Type_C6G end
abstract type EC2Type_C6G_Large <: EC2Type_C6G end
abstract type EC2Type_C6G_Medium <: EC2Type_C6G end
abstract type EC2Type_C6G_xLarge <: EC2Type_C6G end
abstract type EC2Type_C6G_2xLarge <: EC2Type_C6G end
abstract type EC2Type_C6G_4xLarge <: EC2Type_C6G end
abstract type EC2Type_C6G_8xLarge <: EC2Type_C6G end
abstract type EC2Type_C6G_12xLarge <: EC2Type_C6G end
abstract type EC2Type_C6G_16xLarge <: EC2Type_C6G end

abstract type EC2Type_C6GD_Metal <: EC2Type_C6GD end
abstract type EC2Type_C6GD_Large <: EC2Type_C6GD end
abstract type EC2Type_C6GD_Medium <: EC2Type_C6GD end
abstract type EC2Type_C6GD_xLarge <: EC2Type_C6GD end
abstract type EC2Type_C6GD_2xLarge <: EC2Type_C6GD end
abstract type EC2Type_C6GD_4xLarge <: EC2Type_C6GD end
abstract type EC2Type_C6GD_8xLarge <: EC2Type_C6GD end
abstract type EC2Type_C6GD_12xLarge <: EC2Type_C6G end
abstract type EC2Type_C6GD_16xLarge <: EC2Type_C6G end

abstract type EC2Type_C6GN_Large <: EC2Type_C6GN end
abstract type EC2Type_C6GN_Medium <: EC2Type_C6GN end
abstract type EC2Type_C6GN_xLarge <: EC2Type_C6GN end
abstract type EC2Type_C6GN_2xLarge <: EC2Type_C6GN end
abstract type EC2Type_C6GN_4xLarge <: EC2Type_C6GN end
abstract type EC2Type_C6GN_8xLarge <: EC2Type_C6GN end
abstract type EC2Type_C6GN_12xLarge <: EC2Type_C6GN end
abstract type EC2Type_C6GN_16xLarge <: EC2Type_C6GN end

abstract type EC2Type_C6I_Metal <: EC2Type_C6I end
abstract type EC2Type_C6I_Large <: EC2Type_C6I end
abstract type EC2Type_C6I_xLarge <: EC2Type_C6I end
abstract type EC2Type_C6I_2xLarge <: EC2Type_C6I end
abstract type EC2Type_C6I_4xLarge <: EC2Type_C6I end
abstract type EC2Type_C6I_8xLarge <: EC2Type_C6I end
abstract type EC2Type_C6I_12xLarge <: EC2Type_C6I end
abstract type EC2Type_C6I_16xLarge <: EC2Type_C6I end
abstract type EC2Type_C6I_24xLarge <: EC2Type_C6I end
abstract type EC2Type_C6I_32xLarge <: EC2Type_C6I end

abstract type EC2Type_C6ID_Metal <: EC2Type_C6ID end
abstract type EC2Type_C6ID_Large <: EC2Type_C6ID end
abstract type EC2Type_C6ID_xLarge <: EC2Type_C6ID end
abstract type EC2Type_C6ID_2xLarge <: EC2Type_C6ID end
abstract type EC2Type_C6ID_4xLarge <: EC2Type_C6ID end
abstract type EC2Type_C6ID_8xLarge <: EC2Type_C6ID end
abstract type EC2Type_C6ID_12xLarge <: EC2Type_C6ID end
abstract type EC2Type_C6ID_16xLarge <: EC2Type_C6ID end
abstract type EC2Type_C6ID_24xLarge <: EC2Type_C6ID end
abstract type EC2Type_C6ID_32xLarge <: EC2Type_C6ID end

abstract type EC2Type_C6A_Metal <: EC2Type_C6A end
abstract type EC2Type_C6A_Large <: EC2Type_C6A end
abstract type EC2Type_C6A_xLarge <: EC2Type_C6A end
abstract type EC2Type_C6A_2xLarge <: EC2Type_C6A end
abstract type EC2Type_C6A_4xLarge <: EC2Type_C6A end
abstract type EC2Type_C6A_8xLarge <: EC2Type_C6A end
abstract type EC2Type_C6A_12xLarge <: EC2Type_C6A end
abstract type EC2Type_C6A_16xLarge <: EC2Type_C6A end
abstract type EC2Type_C6A_24xLarge <: EC2Type_C6A end
abstract type EC2Type_C6A_32xLarge <: EC2Type_C6A end
abstract type EC2Type_C6A_48xLarge <: EC2Type_C6A end

abstract type EC2Type_HPC6A <: EC2Type end

abstract type EC2Type_HPC6A_48xLarge <: EC2Type_HPC6A end

abstract type EC2Type_C5 <: EC2Type end
abstract type EC2Type_C5D <: EC2Type_C5 end
abstract type EC2Type_C5A <: EC2Type_C5 end
abstract type EC2Type_C5N <: EC2Type_C5 end
abstract type EC2Type_C5AD <: EC2Type_C5A end

abstract type EC2Type_C5_Metal <: EC2Type_C5 end
abstract type EC2Type_C5_Large <: EC2Type_C5 end
abstract type EC2Type_C5_xLarge <: EC2Type_C5 end
abstract type EC2Type_C5_2xLarge <: EC2Type_C5 end
abstract type EC2Type_C5_4xLarge <: EC2Type_C5 end
abstract type EC2Type_C5_9xLarge <: EC2Type_C5 end
abstract type EC2Type_C5_12xLarge <: EC2Type_C5 end
abstract type EC2Type_C5_18xLarge <: EC2Type_C5 end
abstract type EC2Type_C5_24xLarge <: EC2Type_C5 end

abstract type EC2Type_C5D_Metal <: EC2Type_C5D end
abstract type EC2Type_C5D_Large <: EC2Type_C5D end
abstract type EC2Type_C5D_xLarge <: EC2Type_C5D end
abstract type EC2Type_C5D_2xLarge <: EC2Type_C5D end
abstract type EC2Type_C5D_4xLarge <: EC2Type_C5D end
abstract type EC2Type_C5D_9xLarge <: EC2Type_C5D end
abstract type EC2Type_C5D_12xLarge <: EC2Type_C5D end
abstract type EC2Type_C5D_18xLarge <: EC2Type_C5D end
abstract type EC2Type_C5D_24xLarge <: EC2Type_C5D end

abstract type EC2Type_C5A_Large <: EC2Type_C5A end
abstract type EC2Type_C5A_xLarge <: EC2Type_C5A end
abstract type EC2Type_C5A_2xLarge <: EC2Type_C5A end
abstract type EC2Type_C5A_4xLarge <: EC2Type_C5A end
abstract type EC2Type_C5A_8xLarge <: EC2Type_C5A end
abstract type EC2Type_C5A_12xLarge <: EC2Type_C5A end
abstract type EC2Type_C5A_16xLarge <: EC2Type_C5A end
abstract type EC2Type_C5A_24xLarge <: EC2Type_C5A end

abstract type EC2Type_C5AD_Large <: EC2Type_C5AD end
abstract type EC2Type_C5AD_xLarge <: EC2Type_C5AD end
abstract type EC2Type_C5AD_2xLarge <: EC2Type_C5AD end
abstract type EC2Type_C5AD_4xLarge <: EC2Type_C5AD end
abstract type EC2Type_C5AD_8xLarge <: EC2Type_C5AD end
abstract type EC2Type_C5AD_12xLarge <: EC2Type_C5AD end
abstract type EC2Type_C5AD_16xLarge <: EC2Type_C5AD end
abstract type EC2Type_C5AD_24xLarge <: EC2Type_C5AD end

abstract type EC2Type_C5N_Metal <: EC2Type_C5N end
abstract type EC2Type_C5N_Large <: EC2Type_C5N end
abstract type EC2Type_C5N_xLarge <: EC2Type_C5N end
abstract type EC2Type_C5N_2xLarge <: EC2Type_C5N end
abstract type EC2Type_C5N_4xLarge <: EC2Type_C5N end
abstract type EC2Type_C5N_9xLarge <: EC2Type_C5N end
abstract type EC2Type_C5N_18xLarge <: EC2Type_C5N end

abstract type EC2Type_C4 <: EC2Type end

abstract type EC2Type_C4_Large <: EC2Type_C4 end
abstract type EC2Type_C4_xLarge <: EC2Type_C4 end
abstract type EC2Type_C4_2xLarge <: EC2Type_C4 end
abstract type EC2Type_C4_4xLarge <: EC2Type_C4 end
abstract type EC2Type_C4_8xLarge <: EC2Type_C4 end

## memory optimized instances

abstract type EC2Type_R6 <: EC2Type end
abstract type EC2Type_R6A <: EC2Type_R6 end
abstract type EC2Type_R6G <: EC2Type_R6 end
abstract type EC2Type_R6I <: EC2Type_R6 end
abstract type EC2Type_R6GD <: EC2Type_R6G end
abstract type EC2Type_R6ID <: EC2Type_R6I end

abstract type EC2Type_R6A_Metal <: EC2Type_R6A end
abstract type EC2Type_R6A_Large <: EC2Type_R6A end
abstract type EC2Type_R6A_xLarge <: EC2Type_R6A end
abstract type EC2Type_R6A_2xLarge <: EC2Type_R6A end
abstract type EC2Type_R6A_4xLarge <: EC2Type_R6A end
abstract type EC2Type_R6A_8xLarge <: EC2Type_R6A end
abstract type EC2Type_R6A_12xLarge <: EC2Type_R6A end
abstract type EC2Type_R6A_16xLarge <: EC2Type_R6A end
abstract type EC2Type_R6A_24xLarge <: EC2Type_R6A end
abstract type EC2Type_R6A_32xLarge <: EC2Type_R6A end
abstract type EC2Type_R6A_48xLarge <: EC2Type_R6A end

abstract type EC2Type_R6G_Metal <: EC2Type_R6G end
abstract type EC2Type_R6G_Large <: EC2Type_R6G end
abstract type EC2Type_R6G_Medium <: EC2Type_R6G end
abstract type EC2Type_R6G_xLarge <: EC2Type_R6G end
abstract type EC2Type_R6G_2xLarge <: EC2Type_R6G end
abstract type EC2Type_R6G_4xLarge <: EC2Type_R6G end
abstract type EC2Type_R6G_8xLarge <: EC2Type_R6G end
abstract type EC2Type_R6G_12xLarge <: EC2Type_R6G end
abstract type EC2Type_R6G_16xLarge <: EC2Type_R6G end

abstract type EC2Type_R6GD_Metal <: EC2Type_R6GD end
abstract type EC2Type_R6GD_Large <: EC2Type_R6GD end
abstract type EC2Type_R6GD_Medium <: EC2Type_R6GD end
abstract type EC2Type_R6GD_xLarge <: EC2Type_R6GD end
abstract type EC2Type_R6GD_2xLarge <: EC2Type_R6GD end
abstract type EC2Type_R6GD_4xLarge <: EC2Type_R6GD end
abstract type EC2Type_R6GD_8xLarge <: EC2Type_R6GD end
abstract type EC2Type_R6GD_12xLarge <: EC2Type_R6GD end
abstract type EC2Type_R6GD_16xLarge <: EC2Type_R6GD end

abstract type EC2Type_R6I_Metal <: EC2Type_R6I end
abstract type EC2Type_R6I_Large <: EC2Type_R6I end
abstract type EC2Type_R6I_xLarge <: EC2Type_R6I end
abstract type EC2Type_R6I_2xLarge <: EC2Type_R6I end
abstract type EC2Type_R6I_4xLarge <: EC2Type_R6I end
abstract type EC2Type_R6I_8xLarge <: EC2Type_R6I end
abstract type EC2Type_R6I_12xLarge <: EC2Type_R6I end
abstract type EC2Type_R6I_16xLarge <: EC2Type_R6I end
abstract type EC2Type_R6I_24xLarge <: EC2Type_R6I end
abstract type EC2Type_R6I_32xLarge <: EC2Type_R6I end

abstract type EC2Type_R6ID_Metal <: EC2Type_R6ID end
abstract type EC2Type_R6ID_Large <: EC2Type_R6ID end
abstract type EC2Type_R6ID_xLarge <: EC2Type_R6ID end
abstract type EC2Type_R6ID_2xLarge <: EC2Type_R6ID end
abstract type EC2Type_R6ID_4xLarge <: EC2Type_R6ID end
abstract type EC2Type_R6ID_8xLarge <: EC2Type_R6ID end
abstract type EC2Type_R6ID_12xLarge <: EC2Type_R6ID end
abstract type EC2Type_R6ID_16xLarge <: EC2Type_R6ID end
abstract type EC2Type_R6ID_24xLarge <: EC2Type_R6ID end
abstract type EC2Type_R6ID_32xLarge <: EC2Type_R6ID end

abstract type EC2Type_R5 <: EC2Type end
abstract type EC2Type_R5D <: EC2Type_R5 end
abstract type EC2Type_R5A <: EC2Type_R5 end
abstract type EC2Type_R5B <: EC2Type_R5 end
abstract type EC2Type_R5N <: EC2Type_R5 end
abstract type EC2Type_R5AD <: EC2Type_R5A end
abstract type EC2Type_R5DN <: EC2Type_R5N end

abstract type EC2Type_R5_Metal <: EC2Type_R5 end
abstract type EC2Type_R5_Large <: EC2Type_R5 end
abstract type EC2Type_R5_xLarge <: EC2Type_R5 end
abstract type EC2Type_R5_2xLarge <: EC2Type_R5 end
abstract type EC2Type_R5_4xLarge <: EC2Type_R5 end
abstract type EC2Type_R5_8xLarge <: EC2Type_R5 end
abstract type EC2Type_R5_12xLarge <: EC2Type_R5 end
abstract type EC2Type_R5_16xLarge <: EC2Type_R5 end
abstract type EC2Type_R5_24xLarge <: EC2Type_R5 end

abstract type EC2Type_R5D_Metal <: EC2Type_R5D end
abstract type EC2Type_R5D_Large <: EC2Type_R5D end
abstract type EC2Type_R5D_xLarge <: EC2Type_R5D end
abstract type EC2Type_R5D_2xLarge <: EC2Type_R5D end
abstract type EC2Type_R5D_4xLarge <: EC2Type_R5D end
abstract type EC2Type_R5D_8xLarge <: EC2Type_R5D end
abstract type EC2Type_R5D_12xLarge <: EC2Type_R5D end
abstract type EC2Type_R5D_16xLarge <: EC2Type_R5D end
abstract type EC2Type_R5D_24xLarge <: EC2Type_R5D end

abstract type EC2Type_R5A_Large <: EC2Type_R5A end
abstract type EC2Type_R5A_xLarge <: EC2Type_R5A end
abstract type EC2Type_R5A_2xLarge <: EC2Type_R5A end
abstract type EC2Type_R5A_4xLarge <: EC2Type_R5A end
abstract type EC2Type_R5A_8xLarge <: EC2Type_R5A end
abstract type EC2Type_R5A_12xLarge <: EC2Type_R5A end
abstract type EC2Type_R5A_16xLarge <: EC2Type_R5A end
abstract type EC2Type_R5A_24xLarge <: EC2Type_R5A end

abstract type EC2Type_R5AD_Large <: EC2Type_R5AD end
abstract type EC2Type_R5AD_xLarge <: EC2Type_R5AD end
abstract type EC2Type_R5AD_2xLarge <: EC2Type_R5AD end
abstract type EC2Type_R5AD_4xLarge <: EC2Type_R5AD end
abstract type EC2Type_R5AD_8xLarge <: EC2Type_R5AD end
abstract type EC2Type_R5AD_12xLarge <: EC2Type_R5AD end
abstract type EC2Type_R5AD_16xLarge <: EC2Type_R5AD end
abstract type EC2Type_R5AD_24xLarge <: EC2Type_R5AD end

abstract type EC2Type_R5B_Metal <: EC2Type_R5B end
abstract type EC2Type_R5B_Large <: EC2Type_R5B end
abstract type EC2Type_R5B_xLarge <: EC2Type_R5B end
abstract type EC2Type_R5B_2xLarge <: EC2Type_R5B end
abstract type EC2Type_R5B_4xLarge <: EC2Type_R5B end
abstract type EC2Type_R5B_8xLarge <: EC2Type_R5B end
abstract type EC2Type_R5B_12xLarge <: EC2Type_R5B end
abstract type EC2Type_R5B_16xLarge <: EC2Type_R5B end
abstract type EC2Type_R5B_24xLarge <: EC2Type_R5B end

abstract type EC2Type_R5N_Metal <: EC2Type_R5N end
abstract type EC2Type_R5N_Large <: EC2Type_R5N end
abstract type EC2Type_R5N_xLarge <: EC2Type_R5N end
abstract type EC2Type_R5N_2xLarge <: EC2Type_R5N end
abstract type EC2Type_R5N_4xLarge <: EC2Type_R5N end
abstract type EC2Type_R5N_8xLarge <: EC2Type_R5N end
abstract type EC2Type_R5N_12xLarge <: EC2Type_R5N end
abstract type EC2Type_R5N_16xLarge <: EC2Type_R5N end
abstract type EC2Type_R5N_24xLarge <: EC2Type_R5N end

abstract type EC2Type_R5DN_Metal <: EC2Type_R5DN end
abstract type EC2Type_R5DN_Large <: EC2Type_R5DN end
abstract type EC2Type_R5DN_xLarge <: EC2Type_R5DN end
abstract type EC2Type_R5DN_2xLarge <: EC2Type_R5DN end
abstract type EC2Type_R5DN_4xLarge <: EC2Type_R5DN end
abstract type EC2Type_R5DN_8xLarge <: EC2Type_R5DN end
abstract type EC2Type_R5DN_12xLarge <: EC2Type_R5DN end
abstract type EC2Type_R5DN_16xLarge <: EC2Type_R5DN end
abstract type EC2Type_R5DN_24xLarge <: EC2Type_R5DN end

abstract type EC2Type_R4 <: EC2Type end

abstract type EC2Type_R4_Large <: EC2Type_R4 end
abstract type EC2Type_R4_xLarge <: EC2Type_R4 end
abstract type EC2Type_R4_2xLarge <: EC2Type_R4 end
abstract type EC2Type_R4_4xLarge <: EC2Type_R4 end
abstract type EC2Type_R4_8xLarge <: EC2Type_R4 end
abstract type EC2Type_R4_16xLarge <: EC2Type_R4 end

abstract type EC2Type_X2 <: EC2Type end
abstract type EC2Type_X2GD <: EC2Type_X2 end
abstract type EC2Type_X2IDN <: EC2Type_X2 end
abstract type EC2Type_X2IEDN <: EC2Type_X2 end
abstract type EC2Type_X2IEZN <: EC2Type_X2 end

abstract type EC2Type_X2GD_Metal <: EC2Type_X2GD end
abstract type EC2Type_X2GD_Large <: EC2Type_X2GD end
abstract type EC2Type_X2GD_Medium <: EC2Type_X2GD end
abstract type EC2Type_X2GD_xLarge <: EC2Type_X2GD end
abstract type EC2Type_X2GD_2xLarge <: EC2Type_X2GD end
abstract type EC2Type_X2GD_4xLarge <: EC2Type_X2GD end
abstract type EC2Type_X2GD_8xLarge <: EC2Type_X2GD end
abstract type EC2Type_X2GD_12xLarge <: EC2Type_X2GD end
abstract type EC2Type_X2GD_16xLarge <: EC2Type_X2GD end

abstract type EC2Type_X2IDN_Metal <: EC2Type_X2IDN end
abstract type EC2Type_X2IDN_16xLarge <: EC2Type_X2IDN end
abstract type EC2Type_X2IDN_24xLarge <: EC2Type_X2IDN end
abstract type EC2Type_X2IDN_32xLarge <: EC2Type_X2IDN end

abstract type EC2Type_X2IEDN_Metal <: EC2Type_X2IEDN end
abstract type EC2Type_X2IEDN_xLarge <: EC2Type_X2IEDN end
abstract type EC2Type_X2IEDN_2xLarge <: EC2Type_X2IEDN end
abstract type EC2Type_X2IEDN_4xLarge <: EC2Type_X2IEDN end
abstract type EC2Type_X2IEDN_8xLarge <: EC2Type_X2IEDN end
abstract type EC2Type_X2IEDN_16xLarge <: EC2Type_X2IEDN end
abstract type EC2Type_X2IEDN_24xLarge <: EC2Type_X2IEDN end
abstract type EC2Type_X2IEDN_32xLarge <: EC2Type_X2IEDN end

abstract type EC2Type_X2IEZN_Metal <: EC2Type_X2IEZN end
abstract type EC2Type_X2IEZN_2xLarge <: EC2Type_X2IEZN end
abstract type EC2Type_X2IEZN_4xLarge <: EC2Type_X2IEZN end
abstract type EC2Type_X2IEZN_6xLarge <: EC2Type_X2IEZN end
abstract type EC2Type_X2IEZN_8xLarge <: EC2Type_X2IEZN end
abstract type EC2Type_X2IEZN_12xLarge <: EC2Type_X2IEZN end

abstract type EC2Type_X1 <: EC2Type end
abstract type EC2Type_X1E <: EC2Type_X1 end

abstract type EC2Type_X1E_xLarge <: EC2Type_X1E end
abstract type EC2Type_X1E_2xLarge <: EC2Type_X1E end
abstract type EC2Type_X1E_4xLarge <: EC2Type_X1E end
abstract type EC2Type_X1E_8xLarge <: EC2Type_X1E end
abstract type EC2Type_X1E_16xLarge <: EC2Type_X1E end
abstract type EC2Type_X1E_32xLarge <: EC2Type_X1E end

abstract type EC2Type_X1_16xLarge <: EC2Type_X1 end
abstract type EC2Type_X1_32xLarge <: EC2Type_X1 end

abstract type EC2Type_U <: EC2Type end
abstract type EC2Type_U3TB1 <: EC2Type_U end
abstract type EC2Type_U6TB1 <: EC2Type_U end
abstract type EC2Type_U9TB1 <: EC2Type_U end
abstract type EC2Type_U12TB1 <: EC2Type_U end
abstract type EC2Type_U18TB1 <: EC2Type_U end
abstract type EC2Type_U24TB1 <: EC2Type_U end

abstract type EC2Type_U3TB1_56xLarge <: EC2Type_U3TB1 end

abstract type EC2Type_U6TB1_Metal <: EC2Type_U6TB1 end
abstract type EC2Type_U6TB1_56xLarge <: EC2Type_U6TB1 end
abstract type EC2Type_U6TB1_112xLarge <: EC2Type_U6TB1 end

abstract type EC2Type_U9TB1_Metal <: EC2Type_U9TB1 end
abstract type EC2Type_U9TB1_112xLarge <: EC2Type_U9TB1 end

abstract type EC2Type_U12TB1_Metal <: EC2Type_U12TB1 end
abstract type EC2Type_U12TB1_112xLarge <: EC2Type_U12TB1 end

abstract type EC2Type_U18TB1_Metal <: EC2Type_U18TB1 end

abstract type EC2Type_U24TB1_Metal <: EC2Type_U24TB1 end

abstract type EC2Type_Z1D <: EC2Type end

abstract type EC2Type_Z1D_Metal <: EC2Type_Z1D end
abstract type EC2Type_Z1D_Large <: EC2Type_Z1D end
abstract type EC2Type_Z1D_xLarge <: EC2Type_Z1D end
abstract type EC2Type_Z1D_2xLarge <: EC2Type_Z1D end
abstract type EC2Type_Z1D_3xLarge <: EC2Type_Z1D end
abstract type EC2Type_Z1D_6xLarge <: EC2Type_Z1D end
abstract type EC2Type_Z1D_12xLarge <: EC2Type_Z1D end

## accelerated computing instances
abstract type EC2Type_P4D <: EC2Type end
abstract type EC2Type_P4DE <: EC2Type_P4D end

abstract type EC2Type_P4D_24xLarge <: EC2Type_P4D end
abstract type EC2Type_P4DE_24xLarge <: EC2Type_P4DE end # instance type in preview

abstract type EC2Type_P3 <: EC2Type end
abstract type EC2Type_P3DN <: EC2Type_P3 end

abstract type EC2Type_P3_2xLarge <: EC2Type_P3 end
abstract type EC2Type_P3_8xLarge <: EC2Type_P3 end
abstract type EC2Type_P3_16xLarge <: EC2Type_P3 end

abstract type EC2Type_P3DN_24xLarge <: EC2Type_P3DN end

abstract type EC2Type_P2 <: EC2Type end

abstract type EC2Type_P2_xLarge <: EC2Type_P2 end
abstract type EC2Type_P2_8xLarge <: EC2Type_P2 end
abstract type EC2Type_P2_16xLarge <: EC2Type_P2 end

abstract type EC2Type_DL1 <: EC2Type end

abstract type EC2Type_DL1_24xLarge <: EC2Type_DL1 end

abstract type EC2Type_INF1 <: EC2Type end

abstract type EC2Type_INF1_xLarge <: EC2Type_INF1 end
abstract type EC2Type_INF1_2xLarge <: EC2Type_INF1 end
abstract type EC2Type_INF1_6xLarge <: EC2Type_INF1 end
abstract type EC2Type_INF1_24xLarge <: EC2Type_INF1 end

abstract type EC2Type_G5 <: EC2Type end
abstract type EC2Type_G5G <: EC2Type_G5 end

abstract type EC2Type_G5_xLarge <: EC2Type_G5 end
abstract type EC2Type_G5_2xLarge <: EC2Type_G5 end
abstract type EC2Type_G5_4xLarge <: EC2Type_G5 end
abstract type EC2Type_G5_8xLarge <: EC2Type_G5 end
abstract type EC2Type_G5_12xLarge <: EC2Type_G5 end
abstract type EC2Type_G5_16xLarge <: EC2Type_G5 end
abstract type EC2Type_G5_24xLarge <: EC2Type_G5 end
abstract type EC2Type_G5_48xLarge <: EC2Type_G5 end

abstract type EC2Type_G5G_Metal <: EC2Type_G5G end
abstract type EC2Type_G5G_xLarge <: EC2Type_G5G end
abstract type EC2Type_G5G_2xLarge <: EC2Type_G5G end
abstract type EC2Type_G5G_4xLarge <: EC2Type_G5G end
abstract type EC2Type_G5G_8xLarge <: EC2Type_G5G end
abstract type EC2Type_G5G_16xLarge <: EC2Type_G5G end

abstract type EC2Type_G4 <: EC2Type end
abstract type EC2Type_G4DN <: EC2Type_G4 end
abstract type EC2Type_G4AD <: EC2Type_G4 end

abstract type EC2Type_G4DN_Metal <: EC2Type_G4DN end
abstract type EC2Type_G4DN_xLarge <: EC2Type_G4DN end
abstract type EC2Type_G4DN_2xLarge <: EC2Type_G4DN end
abstract type EC2Type_G4DN_4xLarge <: EC2Type_G4DN end
abstract type EC2Type_G4DN_8xLarge <: EC2Type_G4DN end
abstract type EC2Type_G4DN_12xLarge <: EC2Type_G4DN end
abstract type EC2Type_G4DN_16xLarge <: EC2Type_G4DN end

abstract type EC2Type_G4AD_xLarge <: EC2Type_G4AD end
abstract type EC2Type_G4AD_2xLarge <: EC2Type_G4AD end
abstract type EC2Type_G4AD_4xLarge <: EC2Type_G4AD end
abstract type EC2Type_G4AD_8xLarge <: EC2Type_G4AD end
abstract type EC2Type_G4AD_16xLarge <: EC2Type_G4AD end

abstract type EC2Type_G3 <: EC2Type end
abstract type EC2Type_G3S <: EC2Type_G3 end

abstract type EC2Type_G3_4xLarge <: EC2Type_G3 end
abstract type EC2Type_G3_8xLarge <: EC2Type_G3 end
abstract type EC2Type_G3_16xLarge <: EC2Type_G3 end

abstract type EC2Type_G3S_xLarge <: EC2Type_G3S end

abstract type EC2Type_F1 <: EC2Type end

abstract type EC2Type_F1_2xLarge <: EC2Type_F1 end
abstract type EC2Type_F1_4xLarge <: EC2Type_F1 end
abstract type EC2Type_F1_16xLarge <: EC2Type_F1 end

abstract type EC2Type_VT1 <: EC2Type end

abstract type EC2Type_VT1_3xLarge <: EC2Type_VT1 end
abstract type EC2Type_VT1_6xLarge <: EC2Type_VT1 end
abstract type EC2Type_VT1_24xLarge <: EC2Type_VT1 end

## storage optimized instances

abstract type EC2Type_IM4GN <: EC2Type end

abstract type EC2Type_IM4GN_Large <: EC2Type_IM4GN end
abstract type EC2Type_IM4GN_xLarge <: EC2Type_IM4GN end
abstract type EC2Type_IM4GN_2xLarge <: EC2Type_IM4GN end
abstract type EC2Type_IM4GN_4xLarge <: EC2Type_IM4GN end
abstract type EC2Type_IM4GN_8xLarge <: EC2Type_IM4GN end
abstract type EC2Type_IM4GN_16xLarge <: EC2Type_IM4GN end

abstract type EC2Type_IS4GEN <: EC2Type end

abstract type EC2Type_IS4GEN_Large <: EC2Type_IS4GEN end
abstract type EC2Type_IS4GEN_Medium <: EC2Type_IS4GEN end
abstract type EC2Type_IS4GEN_xLarge <: EC2Type_IS4GEN end
abstract type EC2Type_IS4GEN_2xLarge <: EC2Type_IS4GEN end
abstract type EC2Type_IS4GEN_4xLarge <: EC2Type_IS4GEN end
abstract type EC2Type_IS4GEN_8xLarge <: EC2Type_IS4GEN end

abstract type EC2Type_I4I <: EC2Type end

abstract type EC2Type_I4I_Metal <: EC2Type_I4I end
abstract type EC2Type_I4I_Large <: EC2Type_I4I end
abstract type EC2Type_I4I_xLarge <: EC2Type_I4I end
abstract type EC2Type_I4I_2xLarge <: EC2Type_I4I end
abstract type EC2Type_I4I_4xLarge <: EC2Type_I4I end
abstract type EC2Type_I4I_8xLarge <: EC2Type_I4I end
abstract type EC2Type_I4I_16xLarge <: EC2Type_I4I end
abstract type EC2Type_I4I_32xLarge <: EC2Type_I4I end

abstract type EC2Type_I3 <: EC2Type end
abstract type EC2Type_I3EN <: EC2Type_I3 end

abstract type EC2Type_I3_Metal <: EC2Type_I3 end
abstract type EC2Type_I3_Large <: EC2Type_I3 end
abstract type EC2Type_I3_xLarge <: EC2Type_I3 end
abstract type EC2Type_I3_2xLarge <: EC2Type_I3 end
abstract type EC2Type_I3_4xLarge <: EC2Type_I3 end
abstract type EC2Type_I3_8xLarge <: EC2Type_I3 end
abstract type EC2Type_I3_16xLarge <: EC2Type_I3 end

abstract type EC2Type_I3EN_Metal <: EC2Type_I3EN end
abstract type EC2Type_I3EN_Large <: EC2Type_I3EN end
abstract type EC2Type_I3EN_xLarge <: EC2Type_I3EN end
abstract type EC2Type_I3EN_2xLarge <: EC2Type_I3EN end
abstract type EC2Type_I3EN_3xLarge <: EC2Type_I3EN end
abstract type EC2Type_I3EN_6xLarge <: EC2Type_I3EN end
abstract type EC2Type_I3EN_12xLarge <: EC2Type_I3EN end
abstract type EC2Type_I3EN_24xLarge <: EC2Type_I3EN end

abstract type EC2Type_D2 <: EC2Type end

abstract type EC2Type_D2_xLarge <: EC2Type_D2 end
abstract type EC2Type_D2_2xLarge <: EC2Type_D2 end
abstract type EC2Type_D2_4xLarge <: EC2Type_D2 end
abstract type EC2Type_D2_8xLarge <: EC2Type_D2 end

abstract type EC2Type_D3 <: EC2Type end
abstract type EC2Type_D3EN <: EC2Type_D3 end

abstract type EC2Type_D3_xLarge <: EC2Type_D3 end
abstract type EC2Type_D3_2xLarge <: EC2Type_D3 end
abstract type EC2Type_D3_4xLarge <: EC2Type_D3 end
abstract type EC2Type_D3_8xLarge <: EC2Type_D3 end

abstract type EC2Type_D3EN_xLarge <: EC2Type_D3EN end
abstract type EC2Type_D3EN_2xLarge <: EC2Type_D3EN end
abstract type EC2Type_D3EN_4xLarge <: EC2Type_D3EN end
abstract type EC2Type_D3EN_6xLarge <: EC2Type_D3EN end
abstract type EC2Type_D3EN_8xLarge <: EC2Type_D3EN end
abstract type EC2Type_D3EN_12xLarge <: EC2Type_D3EN end

abstract type EC2Type_H1 <: EC2Type end

abstract type EC2Type_H1_2xLarge <: EC2Type_H1 end
abstract type EC2Type_H1_4xLarge <: EC2Type_H1 end
abstract type EC2Type_H1_8xLarge <: EC2Type_H1 end
abstract type EC2Type_H1_16xLarge <: EC2Type_H1 end

## 
function get_instance_info(::Type{<:AmazonEC2})
    try
        global instance_id = JSON.parse(String(HTTP.request("GET", "http://169.254.169.254/latest/dynamic/instance-identity/document").body))
        # return instance_info["instanceType"], instance_info["region"]
    catch e
        @info e
        println("Not able to fetch cloud instance metadata, if you are running this on a cloud platform instance, consider manually editing the Platform.toml configurantion file.")
        return nothing
    end

    database_path = @get_scratch!("database_path")
    machinetypedb_ec2_url = "https://raw.githubusercontent.com/PlatformAwareProgramming/PlatformAware.jl/aws_ec2/src/features/qualifiers/ec2/db-machinetypes.ec2.csv"
    machinetypedb_ec2_fname =  joinpath(database_path,basename(machinetypedb_ec2_url))
    try_download(machinetypedb_ec2_url, machinetypedb_ec2_fname)
    machinetype_dict_ec2 = readDB2(machinetypedb_ec2_fname)
    instance_info = machinetype_dict_ec2[instance_id["instanceType"]]

    return instance_info
end




# AWS EC2 locale types

abstract type EC2Zone end
abstract type EC2Zone_US end
abstract type EC2Zone_Europe end


abstract type EC2Zone_USEast1 <: EC2Zone end  # Norte da Vírginia

abstract type EC2Zone_USEast1_bos_1a <: EC2Zone_USEast1 end  # Boston
abstract type EC2Zone_USEast1_chi_1a <: EC2Zone_USEast1 end  # ?
abstract type EC2Zone_USEast1_dfw_1a <: EC2Zone_USEast1 end  # ?


function getInstanceLocaleType(::Type{<:AmazonEC2}, locale_desc)
    EC2InstanceZoneDict[locale_desc]
end


EC2InstanceZoneDict = Dict(
        "us-east-1" => EC2Zone_USEast1,
        "us-east-1-bos-1a" => EC2Zone_USEast1_bos_1a,
        "us-east-1-chi-1a" => EC2Zone_USEast1_chi_1a,
        "us-east-1-dfw-1a" => EC2Zone_USEast1_dfw_1a
        # ...
    )




function getNodeFeatures(provider::Type{<:AmazonEC2}, node_features)

    instance_info = get_instance_info(provider)
    if (!isnothing(instance_info))
        node_features["node_count"] = 1
        node_features["node_provider"] = "AmazonEC2"
        node_features["node_virtual"] = "Yes"
        node_features["node_dedicated"] = "Yes"            # ???
        node_features["node_machinefamily"] = instance_info["node_machinefamily"]
        node_features["node_machinetype"] = instance_info["node_machinesize"] 
        node_features["node_vcpus_count"] = instance_info["node_vcpus_count"]     
    end
end
    