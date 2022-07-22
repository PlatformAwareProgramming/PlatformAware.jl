
# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

# https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/

#abstract type ISA_x86 <: ProcessorISA end; export ISA_x86


abstract type ISA_x86_32 <: ProcessorISA end; export ISA_x86_32
const ISA_x86 = ISA_x86_32; export ISA_x86 
abstract type ISA_x86_64 <: ISA_x86_32 end; export ISA_x86_64
const ISA_AMD_64 = ISA_x86_64; export ISA_AMD_64
abstract type ISA_x86_64_v1 <: ISA_x86_64 end; export ISA_x86_64_v1
abstract type ISA_x86_64_v2 <: ISA_x86_64_v1 end; export ISA_x86_64_v2
abstract type ISA_x86_64_v3 <: ISA_x86_64_v2 end; export ISA_x86_64_v3
abstract type ISA_x86_64_v4 <: ISA_x86_64_v3 end; export ISA_x86_64_v4

abstract type ISA_IA_64 <: ProcessorISA end; export ISA_IA_64


#abstract type ISA_ARM_64 <: ProcessorISA end
