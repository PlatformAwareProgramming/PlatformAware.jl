@testset "Basics" begin

    @platform parameter clear

    #= for the first 5 kernels =#
    @platform parameter accelerator_count
    @platform parameter accelerator_manufacturer
    @platform parameter accelerator_api
    @platform parameter node_count
    @platform parameter processor
    @platform parameter accelerator_architecture

    #= for all kernels =#
    @platform parameter node_memory_size
    @platform parameter processor_count
    @platform parameter processor_core_count
    @platform parameter interconnection_bandwidth
    @platform parameter interconnection_latency
    @platform parameter accelerator_type
    @platform parameter accelerator_memorysize
    @platform parameter processor_simd

    # define a kernel
    @platform default function kernel(x,y,args...; z=0, kwargs...)
        println(z,": default implementation of kernel_example:")
    end

    # specify platform-aware implementations
    @platform aware function kernel({accelerator_count::(@atleast 1)},
                                    x,y,args...; z=1, kwargs...)
        println(z,": kernel for 1 accelerators of unspecified kind")
    end
    @platform aware function kernel({accelerator_count::(@atleast 1),
                                     accelerator_manufacturer::NVIDIA,
                                     accelerator_api::(@api OpenCL 3.0)},
                                    x,y,args...; z=2, kwargs...)
        println(z,": kernel for 1 NVIDIA accelerators")
    end
    @platform aware function kernel({node_count::(@atleast 32),
                                     processor::IntelCore_i7_7500U},
                                    x,y,args...; z=3, kwargs...)
        println(z,": kernel optimized to the features of clusters with at least 32 nodes with Intel(R) Core(TM) i7-7500U processors")
    end
    @platform aware function kernel({accelerator_count::(@just 4),
                                     accelerator_manufacturer::NVIDIA,
                                     accelerator_architecture::Turing},
                                    x,y,args...; z=4, kwargs...)
        println(z,": kernel for exactly 4 accelerators of NVIDIA's Turing architecture")
    end
    @platform aware function kernel({node_count::(@between 8 16),
                                     node_memory_size::(@atleast 16G),
                                     processor_count::(@atleast 2),
                                     processor_core_count::(@atleast 8),
                                     interconnection_latency::(@atmost 32u),
                                     interconnection_bandwidth::(@atleast 128G)                                     
                                    },
                                    x,y,args...; z=5, kwargs...)
        println(z,": kernel tuned for a cluster of 8 to 16 nodes having at least 2 processors with at least 8 cores each,")
        println(z,": connected through an intereconnection having at most 32us latency and at least 128Gbs bandwidth.")
    end
    @platform aware function kernel({accelerator_count::(@atleast 1),
                                     accelerator_type::FPGA,
                                     accelerator_memorysize::(@atleast 16G),
                                     processor_simd::AVX512,
                                     node_memory_size::(@atleast 256G)
                                    },
                                    x,y,args...; z=6, kwargs...)
        println(z,": kernel for a platform equipped with a FPGA accelerator with at least 16GB of memory,")
        println(z,": a processor with AVX512 SIMD support, and 256GB of primary memory.")
    end

    kernel(0,1,2,3;z=10,kwargs=0)

end