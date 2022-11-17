@testset "Basics" begin

    @platform feature clear

    #= for the first 5 kernels =#
    @platform feature accelerator_count
    @platform feature accelerator_manufacturer
    @platform feature accelerator_api
    @platform feature node_count
    @platform feature processor
    @platform feature accelerator_architecture

    #= for all kernels =#
    @platform feature node_memory_size
    @platform feature processor_count
    @platform feature processor_core_count
    @platform feature interconnection_bandwidth
    @platform feature interconnection_latency
    @platform feature accelerator_type
    @platform feature accelerator_memory_size
    @platform feature processor_simd

    # define a kernel
    @platform default function kernel(x,y,args...; z=0, kwargs...)
        println(z,": default implementation of kernel_example:")
    end

    # specify platform-aware implementations
    @platform aware function kernel({accelerator_count::(@atleast 1)},
                                    x,y,args...; z=1, kwargs...)
        println(z,": kernel for 1 accelerators of unspecified kind")
    end

    @platform aware function kernel({accelerator_count::@atleast(1,C),
                                     accelerator_manufacturer::NVIDIA,
                                     accelerator_api::(@api CUDA 3.0)},
                                    x::@atleast(1),y,args...; z=2, kwargs...) where C
        println(z,": kernel 1 for $C NVIDIA accelerators")
    end

    @platform aware function kernel({accelerator_count::@atleast(1,C),
                                     accelerator_manufacturer::NVIDIA,
                                     accelerator_api::(@api CUDA 3.0)},
                                    x::@atleast(16),y,args...; z=2, kwargs...) where C
        println(z,": kernel 2 for $C NVIDIA accelerators")
    end

    @platform assumption some_cluster = {node_count::(@atleast 32), processor::IntelCore_i7_7500U}

    @platform aware function kernel($some_cluster, x,y,args...; z=3, kwargs...)
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
                                     accelerator_memory_size::(@atleast 16G),
                                     processor_simd::AVX512,
                                     node_memory_size::(@atleast 256G)
                                    },
                                    x,y,args...; z=6, kwargs...)
        println(z,": kernel for a platform equipped with a FPGA accelerator with at least 16GB of memory,")
        println(z,": a processor with AVX512 SIMD support, and 256GB of primary memory.")
    end

    kernel(@quantifier(7),1,2,3;z=10,kwargs=0)
    kernel(@quantifier(18),1,2,3;z=10,kwargs=0)

end