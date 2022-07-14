# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

## Xeon processors

abstract type IntelXeon <: IntelProcessor end

abstract type IntelXeon_W <: IntelXeon end
abstract type IntelXeon_D <: IntelXeon end

abstract type IntelXeon_E <: IntelXeon end
abstract type IntelXeon_E5 <: IntelXeon_E end
abstract type IntelXeon_E7 <: IntelXeon_E end
abstract type IntelXeon_E5_v4 <: IntelXeon_E5 end
abstract type IntelXeon_E7_v2 <: IntelXeon_E7 end
abstract type IntelXeon_E7_v3 <: IntelXeon_E7 end
abstract type IntelXeon_E7_v4 <: IntelXeon_E7 end

abstract type IntelXeon_Scalable <: IntelXeon end
abstract type IntelXeon_Scalable_g2 <: IntelXeon_Scalable end
abstract type IntelXeon_Scalable_g3 <: IntelXeon_Scalable end