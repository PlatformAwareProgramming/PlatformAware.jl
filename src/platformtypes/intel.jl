# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

abstract type Intel <: Manufacturer end

abstract type IntelXeonE7v4 <: ProcessorFamily{Intel} end

abstract type IntelXeonE7v48000 <: ProcessorSeries{Intel, IntelXeonE7v4} end

abstract type IntelAlderLake <: ProcessorMicroarchitecture{Intel} end


abstract type AVX2 <: ProcessorSIMD end 

abstract type AVX512 <: ProcessorSIMD end 



abstract type IntelXeonE7v48894 <: Processor{
                                             (@just 2G),           # 2.4GHz
                                             (@between 16 32),     # 24 
                                             (@just 2),            # 2 
                                             Intel,
                                             IntelXeonE7v4,
                                             IntelXeonE7v48000,
                                             IntelAlderLake,
                                             AVX2,
                                             ISA_x86_64_v4,
                                             (@between 128 256)    #165W
                                             } end