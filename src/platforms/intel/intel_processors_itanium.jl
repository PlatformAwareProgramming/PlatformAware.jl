# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

## Itanium processors

abstract type IntelItanium <: IntelProcessor end

abstract type IntelItanium_9700 <: IntelItanium end
abstract type IntelItanium_9500 <: IntelItanium end
abstract type IntelItanium_9300 <: IntelItanium end
abstract type IntelItanium_9100 <: IntelItanium end
abstract type IntelItanium_9000 <: IntelItanium end
abstract type IntelItanium_fsb_400 <: IntelItanium end
abstract type IntelItanium_fsb_533 <: IntelItanium end
abstract type IntelItanium_fsb_677 <: IntelItanium end