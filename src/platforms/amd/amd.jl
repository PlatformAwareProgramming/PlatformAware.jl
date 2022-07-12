# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

abstract type AMD <: Manufacturer end

# AMD Processors - source: https://www.amd.com/en/products/specifications/processors


abstract type AMDProcessor <: Processor end

# Families 

abstract type AMDRyzen <: AMDProcessor end
abstract type AMDRyzenPro <: AMDRyzen end
abstract type AMDAthlon <: AMDProcessor end
abstract type AMDAthlonPro <: AMDAthlon end
abstract type AMDASeries <: AMDProcessor end
abstract type AMDASeriesPro <: AMDASeries end
abstract type AMDESeries <: AMDProcessor end
abstract type AMDEpyc <: AMDProcessor end
abstract type AMDFXSeries <: AMDProcessor end
abstract type AMDOpteron <: AMDProcessor end
abstract type AMDPhenom <: AMDProcessor end
abstract type AMDTurion <: AMDProcessor end
abstract type AMDSempron <: AMDProcessor end

#Lines 

abstract type AMDAthlon_3000_GSeries <: AMDAthlon end
abstract type AMDAthlon_II_X2 <: AMDAthlon end
abstract type AMDAthlon_II_X3 <: AMDAthlon end
abstract type AMDAthlon_II_X4 <: AMDAthlon end

