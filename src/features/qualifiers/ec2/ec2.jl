# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

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


