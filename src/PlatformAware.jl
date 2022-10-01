# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

module PlatformAware

using CpuId
using XMLDict
using TOML
using JSON
using Scratch
using Downloads

# quantifiers
include("quantifiers/atleast.jl")
include("quantifiers/atmost.jl")
include("quantifiers/macros.jl")

# platform types
include("platforms/general.jl")
include("platforms/common.jl")
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
include("platforms/amd/amd_processors.jl")
include("platforms/amd/amd_accelerators.jl")
include("platforms/xilinx/xilinx.jl")

include("utils.jl")

# main functionality (@platform macro and default types)
include("features.jl")
include("identification.jl")

# platform identification
include("awareness.jl")

function __init__()
    load!()
end
  
export 
    @platform,
    @atleast,
    @atmost,
    @between,
    @just,
    @unlimited,
    @api,
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
    MemoryType

end
