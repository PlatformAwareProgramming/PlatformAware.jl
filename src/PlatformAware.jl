# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

module PlatformAware

include("quantifiers/quantifiers.jl")
include("platformtypes/platformtypes.jl")
include("platform.jl")

export 
    @platform,
    @atleast,
    @atmost,
    @between,
    @just,
    @unlimited

end
