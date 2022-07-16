
# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

abstract type ISA_x86 <: ProcessorISA end; export ISA_x86
abstract type ISA_x86_32 <: ISA_x86 end; export ISA_x86_32
abstract type ISA_x86_64 <: ISA_x86_32 end; export ISA_x86_64
abstract type ISA_x86_64_v1 <: ISA_x86_64 end; export ISA_x86_64_v1
abstract type ISA_x86_64_v2 <: ISA_x86_64_v1 end; export ISA_x86_64_v2
abstract type ISA_x86_64_v3 <: ISA_x86_64_v2 end; export ISA_x86_64_v3
abstract type ISA_x86_64_v4 <: ISA_x86_64_v3 end; export ISA_x86_64_v4

