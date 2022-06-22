# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

module PlatformAware

# quantifiers
include("quantifiers/atleast.jl")
include("quantifiers/atmost.jl")
include("quantifiers/macros.jl")

# platform types
include("platforms/general.jl")
include("platforms/isa.jl")
include("platforms/ec2.jl")
include("platforms/gcp.jl")
include("platforms/nvidia.jl")
include("platforms/intel.jl")
include("platforms/amd.jl")
include("platforms/xilinx.jl")

# platform identification
include("identification.jl")

export 
    @platform,
    @atleast,
    @atmost,
    @between,
    @just,
    @unlimited

end
