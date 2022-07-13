# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

## Xeon processors

abstract type IntelXeon <: IntelProcessor end

abstract type IntelXeon_w <: IntelXeon end
abstract type IntelXeon_d <: IntelXeon end

abstract type IntelXeon_e <: IntelXeon end
abstract type IntelXeon_e5 <: IntelXeon_e end
abstract type IntelXeon_e7 <: IntelXeon_e end
abstract type IntelXeon_e5_v4 <: IntelXeon_e5 end
abstract type IntelXeon_e7_v2 <: IntelXeon_e7 end
abstract type IntelXeon_e7_v3 <: IntelXeon_e7 end
abstract type IntelXeon_e7_v4 <: IntelXeon_e7 end

abstract type IntelXeon_scalable <: IntelXeon end
abstract type IntelXeon_scalable_g2 <: IntelXeon_scalable end
abstract type IntelXeon_scalable_g3 <: IntelXeon_scalable end