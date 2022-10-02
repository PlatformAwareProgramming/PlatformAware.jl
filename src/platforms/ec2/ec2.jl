# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

# maintainer types
abstract type AmazonEC2 <: CloudProvider end; export AmazonEC2

# locale types


# machine family types

abstract type EC2Family <: MachineFamily end

abstract type EC2Family_General <: EC2_Family end
abstract type EC2Family_Compute <: EC2_Family end
abstract type EC2Family_Accelerated <: EC2_Family end
abstract type EC2Family_Memory <: EC2_Family end
abstract type EC2Family_Storage <: EC2_Family end

# machine type types and sizes

abstract type EC2Type <: MachineType end

abstract type EC2Type_A1 <: EC2Type end
abstract type EC2Size_A1_2xLarge <: EC2Type_A1 end