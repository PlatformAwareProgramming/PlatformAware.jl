# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

## Celeron processors

abstract type IntelCeleron <: IntelProcessor end

abstract type IntelCeleron_G <: IntelCeleron end
abstract type IntelCeleron_J <: IntelCeleron end
abstract type IntelCeleron_N <: IntelCeleron end
abstract type IntelCeleron_7000 <: IntelCeleron end
abstract type IntelCeleron_6000 <: IntelCeleron end
abstract type IntelCeleron_5000 <: IntelCeleron end
abstract type IntelCeleron_4000 <: IntelCeleron end
abstract type IntelCeleron_3000 <: IntelCeleron end
abstract type IntelCeleron_2000 <: IntelCeleron end
abstract type IntelCeleron_1000 <: IntelCeleron end

export IntelCeleron, 
        IntelCeleron_1000, 
        IntelCeleron_2000, 
        IntelCeleron_3000, 
        IntelCeleron_4000, 
        IntelCeleron_5000,
        IntelCeleron_6000, 
        IntelCeleron_7000, 
        IntelCeleron_G, 
        IntelCeleron_J,
        IntelCeleron_N