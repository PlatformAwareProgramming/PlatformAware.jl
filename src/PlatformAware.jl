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
using InteractiveUtils
using HTTP
using Distributed

include("utils.jl")

# features (platform types)
include("features/features.jl")     # platform types base
include("features/detection.jl")    # feature detection

# quantifiers
include("features/quantifiers/atleast.jl")
include("features/quantifiers/atmost.jl")
include("features/quantifiers/macros.jl")

# qualifiers
include("features/qualifiers/general.jl")
include("features/qualifiers/common.jl")
include("features/qualifiers/ec2/ec2.jl")
include("features/qualifiers/gcp/gcp.jl")
include("features/qualifiers/nvidia/nvidia.jl")
include("features/qualifiers/intel/intel.jl")
include("features/qualifiers/intel/intel_accelerators_xeonphi.jl")
include("features/qualifiers/intel/intel_processors_atom.jl")
include("features/qualifiers/intel/intel_processors_celeron.jl")
include("features/qualifiers/intel/intel_processors_core.jl")
include("features/qualifiers/intel/intel_processors_itanium.jl")
include("features/qualifiers/intel/intel_processors_pentium.jl")
include("features/qualifiers/intel/intel_processors_xeon.jl")
include("features/qualifiers/amd/amd_processors.jl")
include("features/qualifiers/amd/amd_accelerators.jl")
include("features/qualifiers/xilinx/xilinx.jl")

# main functionality (@platform macro and default types)
include("platform.jl")


function __init__()
    load!()
end
  
export 
    @platform,
    @quantifier,
    @atleast,
    @atmost,
    @between,
    @just,
    @unlimited,
    @api,
    PlatformType,
    QuantifierFeature,
    QualifierFeature,
    Query,
    Yes,
    No,
    Provider,
    OnPremises,
    CloudProvider,
    MachineFamily,
    MachineType,
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
