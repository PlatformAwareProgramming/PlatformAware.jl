# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

### Core processors

abstract type Core <: IntelProcessor end

#### Core X processors

abstract type Core_X <: Core end
abstract type Core_i9_10900X <: Core_X end

#### Core i9 processors

abstract type Core_i9 <: Core end
abstract type Core_i9_g8 <: Core_i9 end
abstract type Core_i9_g9 <: Core_i9 end
abstract type Core_i9_g10 <: Core_i9 end
abstract type Core_i9_g11 <: Core_i9 end
abstract type Core_i9_g12 <: Core_i9 end

#### Core i7 processors

abstract type Core_i7 <: Core end
abstract type Core_i7_g4 <: Core_i7 end
abstract type Core_i7_g5 <: Core_i7 end
abstract type Core_i7_g6 <: Core_i7 end
abstract type Core_i7_g7 <: Core_i7 end; abstract type Core_i7_7500U <: Core_i7_g7 end
abstract type Core_i7_g8 <: Core_i7 end
abstract type Core_i7_g9 <: Core_i7 end
abstract type Core_i7_g10 <: Core_i7 end
abstract type Core_i7_g11 <: Core_i7 end
abstract type Core_i7_g12 <: Core_i7 end

#### Core i5 processors

abstract type Core_i5 <: Core end
abstract type Core_i5_g4 <: Core_i5 end
abstract type Core_i5_g5 <: Core_i5 end
abstract type Core_i5_g6 <: Core_i5 end
abstract type Core_i5_g7 <: Core_i5 end
abstract type Core_i5_g8 <: Core_i5 end
abstract type Core_i5_g9 <: Core_i5 end
abstract type Core_i5_g10 <: Core_i5 end
abstract type Core_i5_g11 <: Core_i5 end
abstract type Core_i5_g12 <: Core_i5 end

#### Core i3 processors

abstract type Core_i3 <: Core end
abstract type Core_i3_g4 <: Core_i3 end
abstract type Core_i3_g5 <: Core_i3 end
abstract type Core_i3_g6 <: Core_i3 end
abstract type Core_i3_g7 <: Core_i3 end
abstract type Core_i3_g8 <: Core_i3 end
abstract type Core_i3_g9 <: Core_i3 end
abstract type Core_i3_g10 <: Core_i3 end
abstract type Core_i3_g11 <: Core_i3 end
abstract type Core_i3_g12 <: Core_i3 end

#### Core M processors

abstract type Core_M <: Core end
abstract type Core_M_g5 <: Core_M end
abstract type Core_M_g6 <: Core_M end
abstract type Core_M_g7 <: Core_M end
abstract type Core_M_g8 <: Core_M end