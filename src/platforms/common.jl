# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------


# OpenCL 
abstract type OpenCL <: AcceleratorBackend end
abstract type OpenCL_1_0 <: OpenCL end
abstract type OpenCL_1_1 <: OpenCL_1_0 end
abstract type OpenCL_1_2 <: OpenCL_1_1 end
abstract type OpenCL_2_0 <: OpenCL_1_2 end
abstract type OpenCL_2_1 <: OpenCL_2_0 end
abstract type OpenCL_2_2 <: OpenCL_2_1 end
abstract type OpenCL_3 <: OpenCL_2_2 end

export OpenCL, OpenCL_1_0, OpenCL_1_1, OpenCL_1_2, OpenCL_2_0, OpenCL_2_1, OpenCL_2_2, OpenCL_3

# SIMD extensions

abstract type Now3D <: ProcessorSIMD end
abstract type Now3Dx <: Now3D end

abstract type MMX <: ProcessorSIMD end

abstract type SSE <: ProcessorSIMD end
abstract type SSE2 <: SSE end
abstract type SSE3 <: SSE2 end
abstract type SSSE3 <: SSE3 end
abstract type SSE4 <: SSSE3 end
abstract type SSE41 <: SSE4 end
abstract type SSE42 <: SSE4 end
abstract type SSE4a <: SSE3 end

abstract type AVX <: ProcessorSIMD end 
abstract type AVX2 <: AVX end 
abstract type AVX512 <: AVX2 end   # https://en.wikipedia.org/wiki/AVX-512


export Now3D, Now3Dx, MMX, SSE, SSE2, SSE3, SSE4, SSE41, SSE42, AVX, AVX2, AVX512

# Memory types

abstract type DDR2 <: MemoryType end
abstract type DDR3 <: MemoryType end
abstract type DDR3L <: DDR3 end
abstract type DDR4 <: MemoryType end
abstract type LPDDR4 <: DDR4 end

export DDR2, DDR3, DDR33L, DDR4, LPDDR4

# Storage types
abstract type SSD <: StorageType end
abstract type HDD <: StorageType end

export SSD, HDD

# Storage interfaces
abstract type SATA <: StorageInterface end
abstract type IDE <: StorageInterface end; const PATA = IDE
abstract type SAS <: StorageInterface end
abstract type SCSI <: StorageInterface end
abstract type FC <: StorageInterface end

export SATA, IDE, SAS, SCSI, FC

# cache mappings

abstract type Direct <: CacheMapping end
abstract type FullyAssociative <: CacheMapping end
abstract type SetAssociative8 <: CacheMapping end
abstract type SetAssociative12 <: CacheMapping end

export Direct, FullyAssociative,  SetAssociative8, SetAssociative12


# processor ISA

# https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/arch/


abstract type ISA_x86_32 <: ProcessorISA end
const ISA_x86 = ISA_x86_32 
abstract type ISA_x86_64 <: ISA_x86_32 end
const ISA_AMD_64 = ISA_x86_64
abstract type ISA_x86_64_v1 <: ISA_x86_64 end
abstract type ISA_x86_64_v2 <: ISA_x86_64_v1 end
abstract type ISA_x86_64_v3 <: ISA_x86_64_v2 end
abstract type ISA_x86_64_v4 <: ISA_x86_64_v3 end

abstract type ISA_IA_64 <: ProcessorISA end
    

export ISA_x86_32, ISA_x86, ISA_x86_64, ISA_AMD_64, ISA_x86_64_v1, ISA_x86_64_v2, ISA_x86_64_v3, ISA_x86_64_v4, ISA_IA_64

