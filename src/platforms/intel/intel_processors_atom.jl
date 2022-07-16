# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

## Atom processors

abstract type IntelAtom <: IntelProcessor end; export IntelAtom

abstract type IntelAtom_C <: IntelAtom end; export IntelAtom_C
abstract type IntelAtom_D <: IntelAtom end; export IntelAtom_D
abstract type IntelAtom_E <: IntelAtom end; export IntelAtom_E
abstract type IntelAtom_N <: IntelAtom end; export IntelAtom_N
abstract type IntelAtom_P <: IntelAtom end; export IntelAtom_P
abstract type IntelAtom_S <: IntelAtom end; export IntelAtom_S
abstract type IntelAtom_X <: IntelAtom end; export IntelAtom_X
abstract type IntelAtom_Z <: IntelAtom end; export IntelAtom_Z