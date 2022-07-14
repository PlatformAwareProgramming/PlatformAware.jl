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
abstract type IntelItanium_FSB <: IntelItanium end
abstract type IntelItanium_FSB_400 <: IntelItanium_FSB end
abstract type IntelItanium_FSB_533 <: IntelItanium_FSB end
abstract type IntelItanium_FSB_677 <: IntelItanium_FSB end