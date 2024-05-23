# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------


# OpenCL 
abstract type OpenCL_API <: AcceleratorBackend end
abstract type OpenCL_1_0 <: OpenCL_API end
abstract type OpenCL_1_1 <: OpenCL_1_0 end
abstract type OpenCL_1_2 <: OpenCL_1_1 end
abstract type OpenCL_2_0 <: OpenCL_1_2 end
abstract type OpenCL_2_1 <: OpenCL_2_0 end
abstract type OpenCL_2_2 <: OpenCL_2_1 end
abstract type OpenCL_3_0 <: OpenCL_2_2 end

export OpenCL_API, OpenCL_1_0, OpenCL_1_1, OpenCL_1_2, OpenCL_2_0, OpenCL_2_1, OpenCL_2_2, OpenCL_3_0

# OpenGL
abstract type OpenGL_API <: AcceleratorBackend end
abstract type OpenGL_4_6 <: OpenGL_API end

export OpenGL_API, OpenGL_4_6

# Vulkan
abstract type Vulkan_API <: AcceleratorBackend end
abstract type Vulkan_1_1 <: Vulkan_API end
abstract type Vulkan_1_2 <: Vulkan_1_1 end
abstract type Vulkan_1_3 <: Vulkan_1_2 end

export Vulkan_API, Vulkan_1_1, Vulkan_1_2, Vulkan_1_3

# DirectX

abstract type DirectX_API <: AcceleratorBackend end
abstract type DirectX_11_0 <: DirectX_API end
abstract type DirectX_12_1 <: DirectX_11_0 end
abstract type DirectX_12_2 <: DirectX_12_1 end

export DirectX_API, DirectX_11_0, DirectX_12_1, DirectX_12_2

# SIMD extensions

abstract type Now3D <: ProcessorSIMD end
abstract type Now3Dx <: Now3D end

abstract type MMX <: ProcessorSIMD end

abstract type SSE <: ProcessorSIMD end
abstract type SSE_2 <: SSE end; const SSE2 = SSE_2
abstract type SSE_3 <: SSE_2 end; const SSE3 = SSE_3
abstract type SSSE_3 <: SSE_3 end; const SSSE3 = SSSE_3
abstract type SSE_4 <: SSSE_3 end; const SSE4 = SSE_4
abstract type SSE_4_1 <: SSE_4 end
abstract type SSE_4_2 <: SSE_4 end
abstract type SSE_4a <: SSE_3 end

abstract type AVX <: ProcessorSIMD end 
abstract type AVX2 <: AVX end 
abstract type AVX512 <: AVX2 end   # https://en.wikipedia.org/wiki/AVX-512


export Now3D, Now3Dx, MMX, SSE, SSE_2, SSE2, SSE_3, SSE3, SSSE_3, SSSE3, SSE_4, SSE4, SSE_4_1, SSE_4_2, AVX, AVX2, AVX512

# Memory types

abstract type RAM <: MemoryType end
abstract type SDRAM <: RAM end

abstract type DDR2 <: SDRAM end
abstract type DDR3 <: SDRAM end
abstract type DDR3L <: SDRAM end
abstract type DDR4 <: SDRAM end
abstract type LPDDR4 <: SDRAM end
abstract type LPDDR4X <: SDRAM end
abstract type DDR5 <: SDRAM end
abstract type LPDDR5 <: SDRAM end

abstract type DDR_SDRAM <: SDRAM end
abstract type GDDR2 <: SDRAM end
abstract type GDDR3 <: SDRAM end
abstract type GDDR4 <: SDRAM end
abstract type GDDR5 <: SDRAM end
abstract type GDDR5X <: SDRAM end
abstract type GDDR6 <: SDRAM end
abstract type GDDR6X <: SDRAM end

abstract type HBM2 <: SDRAM end
abstract type HBM2e <: SDRAM end
abstract type HBM3 <: SDRAM end
abstract type HBM_PIM <: SDRAM end

export RAM, DDR2, DDR3, DDR33L, DDR4, LPDDR4, LPDDR4X, DDR5, LPDDR5
export DDR_SDRAM, GDDR2, GDDR3, GDDR4, GDDR5, GDDR5X, GDDR6, GDDR6X

# Storage types
abstract type StorageType_SSD <: StorageType end
abstract type StorageType_HDD <: StorageType end

export Storage_SSD, Storage_HDD

# Storage interfaces
abstract type StorageInterface_SATA <: StorageInterface end
abstract type StorageInterface_IDE <: StorageInterface end; const StorageInterface_PATA = StorageInterface_IDE
abstract type StorageInterface_SAS <: StorageInterface end
abstract type StorageInterface_SCSI <: StorageInterface end
abstract type StorageInterface_FC <: StorageInterface end

export StorageInterface_SATA, StorageInterface_IDE, StorageInterface_SAS, StorageInterface_SCSI, StorageInterface_FC

# cache mappings

abstract type CacheMapping_Direct <: CacheMapping end
abstract type CacheMapping_FullyAssociative <: CacheMapping end
abstract type CacheMapping_SetAssociative8 <: CacheMapping end
abstract type CacheMapping_SetAssociative12 <: CacheMapping end

export CacheMapping_Direct, CacheMapping_FullyAssociative, CacheMapping_SetAssociative8, CacheMapping_SetAssociative12


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

# TODO: ARM !!!


abstract type WorkerCount end
abstract type NoCoworkers <: WorkerCount end
abstract type PerNode <: WorkerCount end
abstract type PerProcessor <: WorkerCount end
abstract type PerCore <: WorkerCount end
abstract type PerThread <: WorkerCount end
abstract type PerVCPU <: WorkerCount end
abstract type Unmapped <: WorkerCount end

export PerNode, PerProcessor, PerCore, PerThread, PerVCPU