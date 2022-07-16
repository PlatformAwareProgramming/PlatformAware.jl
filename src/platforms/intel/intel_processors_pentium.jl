# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

## Pentium processors

abstract type IntelPentium <: IntelProcessor end

abstract type IntelPentium_Gold <: IntelPentium end
abstract type IntelPentium_Silver <: IntelPentium end
abstract type IntelPentium_D <: IntelPentium end
abstract type IntelPentium_G <: IntelPentium end
abstract type IntelPentium_J <: IntelPentium end
abstract type IntelPentium_N <: IntelPentium end
abstract type IntelPentium_6800 <: IntelPentium end
abstract type IntelPentium_4000 <: IntelPentium end
abstract type IntelPentium_3000 <: IntelPentium end
abstract type IntelPentium_2000 <: IntelPentium end
abstract type IntelPentium_1000 <: IntelPentium end

export IntelPentium,
       IntelPentium_1000,
       IntelPentium_2000,
       IntelPentium_3000,
       IntelPentium_4000,
       IntelPentium_6800,
       IntelPentium_D,
       IntelPentium_G,
       IntelPentium_Gold,
       IntelPentium_J,
       IntelPentium_N,
       IntelPentium_Silver
