# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

### Core processors

abstract type IntelCore <: IntelProcessor end

#### Core X processors

abstract type IntelCore_X <: IntelCore end
abstract type IntelCore_i9_10900X <: IntelCore_X end

#### Core i9 processors

abstract type IntelCore_i9 <: IntelCore end
abstract type IntelCore_i9_g8 <: IntelCore_i9 end
abstract type IntelCore_i9_g9 <: IntelCore_i9 end
abstract type IntelCore_i9_g10 <: IntelCore_i9 end
abstract type IntelCore_i9_g11 <: IntelCore_i9 end
abstract type IntelCore_i9_g12 <: IntelCore_i9 end

#### Core i7 processors

abstract type IntelCore_i7 <: IntelCore end
abstract type IntelCore_i7_g4 <: IntelCore_i7 end
abstract type IntelCore_i7_g5 <: IntelCore_i7 end
abstract type IntelCore_i7_g6 <: IntelCore_i7 end
abstract type IntelCore_i7_g7 <: IntelCore_i7 end; abstract type IntelCore_i7_7500U <: IntelCore_i7_g7 end
abstract type IntelCore_i7_g8 <: IntelCore_i7 end
abstract type IntelCore_i7_g9 <: IntelCore_i7 end
abstract type IntelCore_i7_g10 <: IntelCore_i7 end
abstract type IntelCore_i7_g11 <: IntelCore_i7 end
abstract type IntelCore_i7_g12 <: IntelCore_i7 end

#### Core i5 processors

abstract type IntelCore_i5 <: IntelCore end
abstract type IntelCore_i5_g4 <: IntelCore_i5 end
abstract type IntelCore_i5_g5 <: IntelCore_i5 end
abstract type IntelCore_i5_g6 <: IntelCore_i5 end
abstract type IntelCore_i5_g7 <: IntelCore_i5 end
abstract type IntelCore_i5_g8 <: IntelCore_i5 end
abstract type IntelCore_i5_g9 <: IntelCore_i5 end
abstract type IntelCore_i5_g10 <: IntelCore_i5 end
abstract type IntelCore_i5_g11 <: IntelCore_i5 end
abstract type IntelCore_i5_g12 <: IntelCore_i5 end

#### Core i3 processors

abstract type IntelCore_i3 <: IntelCore end
abstract type IntelCore_i3_g4 <: IntelCore_i3 end
abstract type IntelCore_i3_g5 <: IntelCore_i3 end
abstract type IntelCore_i3_g6 <: IntelCore_i3 end
abstract type IntelCore_i3_g7 <: IntelCore_i3 end
abstract type IntelCore_i3_g8 <: IntelCore_i3 end
abstract type IntelCore_i3_g9 <: IntelCore_i3 end
abstract type IntelCore_i3_g10 <: IntelCore_i3 end
abstract type IntelCore_i3_g11 <: IntelCore_i3 end
abstract type IntelCore_i3_g12 <: IntelCore_i3 end

#### Core M processors

abstract type IntelCore_M <: IntelCore end
abstract type IntelCore_M_g5 <: IntelCore_M end
abstract type IntelCore_M_g6 <: IntelCore_M end
abstract type IntelCore_M_g7 <: IntelCore_M end
abstract type IntelCore_M_g8 <: IntelCore_M end