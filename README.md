# PlatformAware.jl

_A package for improving the practice of **platform-aware programming** in Julia_.

[![][build-img]][build-url]

> _**NOTE**: This package is still in the experimental phase. Interested users are invited to help us improve its implementation by making suggestions and reporting their experiences and issues._

# What is platform-aware programming ?

We define platform-aware programming as the practice of coding computationally intensive functions, called _kernels_, using the most appropriate abstractions and programming interfaces, as well as performance tuning techniques, to take better advantage of the features of the target execution platform. This is a well-known practice in programming for HPC applications.

Platform-aware programming is especially suitable when the developer is interested in employing heterogeneous computing resources, such as accelerators (e.g., GPUs, FPGAs, and MICs), possibly in conjunction with multicore and cluster computing.

For example, suppose a package developer is interested in providing a specialized kernel implementation for [NVIDIA A100 Tensor Core GPUs](https://www.nvidia.com/en-us/data-center/a100), meeting the demand from users of a specific cloud provider offering virtual machines with accelerators of this model. The developer would like to use CUDA programming with this device's supported *computing capability* (8.0). However, other users may require support from other cloud providers that support different accelerator models, from different vendors (for example, [AMD Instinct™ MI210](https://www.amd.com/en/products/server-accelerators/amd-instinct-mi210) and [Intel® Agilex™ F-Series FPGA and SoC FPGA]( https://www.intel.com/content/www/us/en/products/details/fpga/agilex/f-series.html)). In this scenario, the developer will face the challenge of coding and deploying for multiple devices. This is a typical platform-aware programming scenario, becoming increasingly common as the use of heterogeneous computing platforms increases to accelerate AI and data analysis applications.

# Target users

_PlatformAware.jl_ is aimed primarily at **_package developers_** dealing with HPC concerns, especially using heterogenous computing resources.
We assume that **_package users_** are only interested in using package operations without being concerned about how they are implemented.

# Usage

## Instalation

```] add PlatformAware```

   

## Programming

The following is a guideline that can be followed by HPC package developers to do _platform-aware programming_ using _PlatformAware.jl_.

1. Identify the _kernel functions_, that is, the functions with high computational requirements in your package, which are the natural candidates to exploit parallel computing or acceleration resources, or both.

2. Provide a default method for each kernel function, which will execute in any execution platform. This is generally a serial CPU fallback implementation. For that, the developer must use the ```@platform default``` macro. For example, the code below introduces a default method for ```myConvolution```, a kernel of a package interested in performing image convolutions. It could be implemented using the ```conv``` operation of [_DSP.jl_](https://github.com/JuliaDSP/DSP.jl) or the ```imfilter``` operation of [_ImageFiltering.jl_](https://juliaimages.org/ImageFiltering.jl/stable/).

```julia
@platform default function myConvolution(img, krn)
  # fallback CPU code follows 
  ...
end
```


3. Identify the target execution platforms to which you want to provide specialized methods for each kernel function. You can choose a set of execution platforms for all kernels, or you can select one or more platforms for each kernel independently. For helping your choice, look at the following information sources:
   - the [table of supported _platform **parameters**_](https://docs.google.com/spreadsheets/d/1n-c4b7RxUduaKV43XrTnt54w-SR1AXgVNI7dN2OkEUc/edit?usp=sharing), which will help you to know which assumptions _PlatformAware.jl_ will allow you to make about the target execution platorm;
   - the [table of supported _platform **features**_](), where all models of processors and accelerators, as well as memory, storage, and interconnection types that are currently suported by _PlatformAware.jl_ are described.

4. For each platform you select, define a set of assumptions about its features that will guide your implementation decisions. In fact, it is possible to define different assumptions for the same platform, leading to multiple implementations of a kernel for the same platform. For example, you might decide to implement different parallel algorithms to solve a problem according to the number of nodes and the interconnection characteristics of a cluster.

5. Provide platform-aware methods for each kernel function using the ```@platform aware``` macro. For example, the code below introduces two kernel methods. The first one is selected when the execution platform has a NVIDIA GPU of Turing architecture, so that the developer may use CUDA with compute capability 7.5 safely to implement the kernel. In turn, the second one is selected for any other GPU model, implementing the kernel by means of portable interfaces like _OpenCL.jl_ or _oneAPI.jl_. Observe the syntax for declaring platform assumptions, explicitly typing platform parameters with platform types to guide multiple dispatch. The set of platform parameters is enclosed in curly braces, in any order, and positioned just before the regular kernel parameters (```img``` and ```krn```).

```julia
@platform aware function myConvolution({accelerator_count::(@atleast 1), 
                                        accelerator_architecture::Turing,
                                        accelerator_manufacturer::NVIDIA}, img, krn)
  # CUDA.jl code follows ...
  ...
end

@platform aware function myConvolution({accelerator_count::(@atleast 1),
                                        accelerator_type::GPU}, img, krn)
  # OpenCL.jl or oneAPI.jl code follows ...
  ...
end
```

6. After implementing and testing all platform-aware methods, you have a list of platform parameters that were used to make assumptions about the target execution platform(s). You can optionally instruct the _PlatformAware.jl_ to use only that parameters by using the ``@platform parameter`` macro. For example, the following code selects only the platform parameters used in the above examples. This code must be placed before the first call to the ```@platform default``` and ```@platform aware```macros.

```julia
@platform parameter clear
@platform parameter accelerator_count
@platform parameter accelerator_architecture
@platform parameter accelerator_manufacturer
@platform parameter accelerator_type
```

# Contributing

Contributions are very welcome, as are feature requests and suggestions.

Please [open an issue](https://github.com/decarvalhojunior-fh/PlatformAware.jl) if you encounter any problems.

# License

PlatformAware.jl is licensed under the [MIT License](https://github.com/decarvalhojunior-fh/PlatformAware.jl/blob/master/LICENSE) 

[build-img]: https://img.shields.io/github/workflow/status/JuliaEarth/ImageQuilting.jl/CI
[build-url]: https://github.com/decarvalhojunior-fh/PlatformAware.jl/actions
