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
                                             Tuple{AtLeast2G,AtMost2G},     # 2.4GHz
                                             Tuple{AtLeast16,AtMost32},     # 24 
                                             Tuple{AtLeast2,AtMost2},       # 2 
                                             Intel,
                                             IntelXeonE7v4,
                                             IntelXeonE7v48000,
                                             IntelAlderLake,
                                             AVX2,
                                             ISA_x86_64_v4,
                                             Tuple{AtLeast128,AtMost256}    # 165W
                                             } end