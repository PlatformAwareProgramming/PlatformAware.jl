# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

module PlatformAware

using XMLDict
using TOML
using Decimals

# quantifiers
include("quantifiers/atleast.jl")
include("quantifiers/atmost.jl")
include("quantifiers/macros.jl")

# platform types
include("platforms/general.jl")
include("platforms/isa.jl")
include("platforms/ec2/ec2.jl")
include("platforms/gcp/gcp.jl")
include("platforms/nvidia/nvidia.jl")
include("platforms/intel/intel.jl")
include("platforms/intel/intel_accelerators_xeonphi.jl")
include("platforms/intel/intel_processors_atom.jl")
include("platforms/intel/intel_processors_celeron.jl")
include("platforms/intel/intel_processors_core.jl")
include("platforms/intel/intel_processors_itanium.jl")
include("platforms/intel/intel_processors_pentium.jl")
include("platforms/intel/intel_processors_xeon.jl")
include("platforms/amd/amd.jl")
include("platforms/xilinx/xilinx.jl")

# platform identification
include("identification.jl")

export 
    @platform,
    @atleast,
    @atmost,
    @between,
    @just,
    @unlimited,
    Query,
    Yes,
    No,
    Maintainer,
    OnPremise,
    CloudProvider,
    MachineFamily,
    MachineType,
    MachineSize,
    Locale,
    Manufacturer,
    ProcessorMicroarchitecture,
    ProcessorISA,
    ProcessorSIMD,
    Processor,
    AcceleratorType,
    AcceleratorArchitecture,
    AcceleratorBackend,
    Accelerator,
    XPU,
    GPU,
    TPU,
    IPU,
    FPGA,
    MIC,
    InterconnectionTopology,
    Interconnection,
    StorageType,   
    StorageInterface,   
    SSD,
    HDD,
    SATA,
    IDE,
    PATA,
    SAS,
    SCSI,
    FC,
    MemoryType,
    DDR2,
    DDR3,
    DDR4


end
