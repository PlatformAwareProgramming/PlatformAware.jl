@testset "Basics" begin
    # define a kernel
    @platform default function kernel(x,y,args...; z=0, kwargs...)
        println(z,": default implementation of kernel_example:")
    end

    # specify platform-aware implementations
    @platform aware function kernel({accelerator_count::(@atleast 1)},
                                    x,y,args...; z=1, kwargs...)
        println(z,": kernel for 1 accelerators")
    end
    @platform aware function kernel({accelerator_count::(@atleast 1),
                                    accelerator_manufacturer::NVIDIA},
                                    x,y,args...; z=2, kwargs...)
        println(z,": kernel for 1 NVIDIA accelerators")
    end
    @platform aware function kernel({node_count::(@atleast 32),
                                    processor::IntelXeonE7v48894},
                                    x,y,args...; z=3, kwargs...)
        println(z,": kernel for 1 NVIDIA accelerators")
    end
    @platform aware function kernel({accelerator_count::(@just 4),
                                    accelerator_manufacturer::NVIDIA,
                                    accelerator_architecture::Turing},
                                    x,y,args...; z=4, kwargs...)
        println(z,": kernel for 4 accelerators of NVIDIA's Turing architecture")
    end
    @platform aware function kernel({node_count::(@between 8 16),
                                    processor_count::(@atleast 2),
                                    processor_core_count::(@atleast 8),
                                    node_memory_size::(@atleast 16G),
                                    interconnection_bandwidth::(@atleast 128G),
                                    interconnection_latency::(@atmost 32u)},
                                    x,y,args...; z=5, kwargs...)
        println(z,": kernel for a clustr of 8-16 nodes having at least 2 processors each wih at least 8 cores ...")
    end
    @platform aware function kernel({accelerator_type::UltrascalePlus_HBM_FPGA,
                                    accelerator_memorysize::(@atleast 16G),
                                    processor_simd::AVX512,
                                    node_memory_size::(@atleast 256G)},
                                    x,y,args...; z=6, kwargs...)
        println(z,": kernel for a UltrascalePlus+ HBM FPGA")
    end
end