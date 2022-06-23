@testset "Basics" begin
    # define a kernel
    @platform default function kernel(args...; kwargs)
        println("default implementation of kernel_example")
    end

    # specify platform-aware implementations
    @platform aware function kernel({accelerator_count::(@atleast 1)},
                                    args...; kwarg...)
        println("kernel for 1 accelerators")
    end
    @platform aware function kernel({accelerator_count::(@atleast 1),
                                     accelerator_manufacturer::NVIDIA},
                                    args...; kwargs...)
        println("kernel for 1 NVIDIA accelerators")
    end
    @platform aware function kernel({node_count::(@atleast 32),
                                    processor::IntelXeonE7v48894},
                                    args...; kwargs...)
        println("kernel for 1 NVIDIA accelerators")
    end
    @platform aware function kernel({accelerator_count::(@just 4),
                                    accelerator_manufacturer::NVIDIA,
                                    accelerator_architecture::Turing},
                                    args...; kwargs...)
        println("kernel for 4 accelerators of NVIDIA's Turing architecture")
    end
    @platform aware function kernel({node_count::(@between 8 16),
                                    processor_count::(@atleast 2),
                                    processor_core_count::(@atleast 8),
                                    node_memory_size::(@atleast 16G),
                                    interconnection_bandwidth::(@atleast 128G),
                                    interconnection_latency::(@atmost 32u)},
                                    args...; kwargs...)
        println("kernel for a clustr of 8-16 nodes having at least 2 processors each wih at least 8 cores ...")
    end
    @platform aware function kernel({accelerator_type::UltrascalePlus_HBM_FPGA,
                                    accelerator_memorysize::(@atleast 16G),
                                    processor_simd::AVX512,
                                    node_memory_size::(@atleast 256G)},
                                    args...; kwargs...)
        println("kernel for a UltrascalePlus+ HBM FPGA")
    end
end