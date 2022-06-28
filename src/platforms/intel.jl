# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

abstract type Intel <: Manufacturer end

#abstract type IntelXeonE7v4 <: ProcessorFamily{Intel} end

#abstract type IntelXeonE7v48000 <: ProcessorSeries{Intel, IntelXeonE7v4} end

abstract type IntelAlderLake <: ProcessorMicroarchitecture end


abstract type AVX2 <: ProcessorSIMD end 

abstract type AVX512 <: ProcessorSIMD end 



abstract type IntelXeonE7v48894 <: Processor end