# PlatformAware.jl

[![TagBot](https://github.com/decarvalhojunior-fh/PlatformAware.jl/actions/workflows/TagBot.yml/badge.svg)](https://github.com/decarvalhojunior-fh/PlatformAware.jl/actions/workflows/TagBot.yml)
[![CompatHelper](https://github.com/decarvalhojunior-fh/PlatformAware.jl/actions/workflows/CompatHelper.yml/badge.svg)](https://github.com/decarvalhojunior-fh/PlatformAware.jl/actions/workflows/CompatHelper.yml)


_A package for improving the practice of **platform-aware programming** in Julia_.

It helps HPC package developers write code for different versions of computationally intensive functions (kernels) according to different assumptions about the features of the execution platform.


> _**NOTE**: This package is in the experimental stage. Although virtually all of the key features are implemented, more comprehensive testing is still needed, in addition to implementing some features. Interested users are invited to help us improve its implementation by making suggestions and reporting their experiences and found issues._

# What is platform-aware programming ?

We define platform-aware programming as the practice of coding computationally intensive functions, called _kernels_, using the most appropriate abstractions and programming interfaces, as well as performance tuning techniques, to take better advantage of the features of the target execution platform. This is a well-known practice in programming for HPC applications.

Platform-aware programming is especially suitable when the developer is interested in employing heterogeneous computing resources, such as accelerators (e.g., GPUs, FPGAs, and MICs), especially in conjunction with multicore and cluster computing.

For example, suppose a package developer is interested in providing a specialized kernel implementation for [NVIDIA A100 Tensor Core GPUs](https://www.nvidia.com/en-us/data-center/a100), meeting the demand from users of a specific cloud provider offering virtual machines with accelerators of this model. The developer would like to use CUDA programming with this device's supported *computing capability* (8.0). However, other users may require support from other cloud providers that support different accelerator models, from different vendors (for example, [AMD Instinct™ MI210](https://www.amd.com/en/products/server-accelerators/amd-instinct-mi210) and [Intel® Agilex™ F-Series FPGA and SoC FPGA]( https://www.intel.com/content/www/us/en/products/details/fpga/agilex/f-series.html)). In this scenario, the developer will face the challenge of coding and deploying for multiple devices. This is a typical platform-aware programming scenario where _PlatformAware.jl_ should be useful, which is becoming increasingly common as the use of heterogeneous computing platforms increases to accelerate AI and data analytics applications.

# Target users

_PlatformAware.jl_ is aimed primarily at **_package developers_** dealing with HPC concerns, especially using heterogenous computing resources.
We assume that **_package users_** are only interested in using package operations without being concerned about how they are implemented.

## Usage

We present a simple example that readers may reproduce to test _PlatformAware.jl_ features. 

Consider the problem of performing a convolution operation by means of a Fast Fourier Transform (FFT). For that, the user implements an ```fftconv``` function that uses a ```fft``` function offerered by a package called _MyFFT.jl_:

```julia
using MyFFT
fftconv(X,K) = fft(X) .* conj.(fft(K)) 
```

### Creating the MyFFT.jl project

Let's follow a sequence of steps to implement a version of _MyFFT.jl_ that relies on _PlatformAware.jl_ to make it possible the ```fft``` function to take advantage of a GPU device whether it is the present in the underlying execution platform.

First, in the Julia REPL, enter the ```pkg``` environment by typing the "]" symbol. Then, like in the screenshot below, run ```generate MyFFT.jl``` to create a new project called _MyFFT.jl_ and, after exiting the ```pkg``` environment by typing the backscape key 🔙, run ```cd("MyFFT.jl")``` to move to the directory of the created project.

![f1](docs/src/images/f1.png)

These operations create a standard _"hello world"_ project, with the contents of the following snapshot:

![f2](docs/src/images/f2.png)

### Installing PlatformAware.jl

It is necessary to install the _PlatormAware.jl_ packages by executing the following command in the Julia REPL:

```julia 
import Pkg; Pkg.add("PlatormAware")
```
Alternatively, in the ```pkg``` environment:

```julia
add PlatformAware
```
Now, load the _PlatfomAware.jl_ package (```using PlatformAware``` or ```import PlatformAware```) and read the output message:

![f3](docs/src/images/f3.png)

It informs that the _Platform.toml_, which describes the features of the underlying platform, does not exist. Also, it explains how the platform description file can be generated in the current folder, by executing ```PlatformAware.setup()```. Despite being automatically generated, _Platform.toml_ is written in a human-editable format. So, it may be modified by users in order to add non detected platform features or ignore detected features.

### Sketching the MyFFT.jl code

In order to implement the _fft_ kernel function, we edit  the _src/MyFFT.jl_ file. First, we sketch the code of the _fft_ kernel methods:

```julia
module MyFFT

  import PlatformAware

  # setup platorm parameters
  @platform parameter clear
  @platform parameter accelerator_count
  @platform parameter accelerator_api

  # Fallback kernel
  @platform default fft(X) = ...

  # OpenCL kernel, to be called 
  @platform aware fft({accelerator_count::(@atleast 1), accelerator_api::(@api OpenCL)}, X) = ...

  # CUDA kernel
  @platform aware fft({accelerator_count::(@atleast 1), accelerator_api::(@api CUDA)},X) = ...

  export fft

end
```

The sequence of ```@platorm parameter``` macro declarations specify the set of platform parameters that will be used by the following kernel method declarations, i.e.,  the assumptions that will be made to distinguish them.  You may look at [this table](https://docs.google.com/spreadsheets/d/1n-c4b7RxUduaKV43XrTnt54w-SR1AXgVNI7dN2OkEUc/edit?usp=sharing) to see a list of all supported _**platform parameters**_. By default, they are all included. In the case of ```fft```,  kernel methods are distinguished using only two parameters: ```accelerator_count``` and ```accelerator_api```. They denote, respectively, assumptions regarding the number of accelerator devices and the native API they support.

The ```@platorm default``` macro declares the _default kernel method_, which will be called case neither of assumptions of other kernel methods declared using ```@platform aware``` macro calls are valid. The default kernel must be unique to avoid ambiguity. 

Finally, kernels for accelerators that support OpenCL and CUDA APIs are declared using ```@platform aware``` macro. The list of platform parameters are declared just before the regular parameters, like ```X```, enclosed in brackets. Their types denote assumptions. For instance, ```@atleast 1``` denotes a quantifier representing one or more units of a resource, whereas ```@api CUDA``` and ```@api OpenCL``` denote qualifier types that make reference to CUDA and OpenCL APIs.

### Alternative dependencies

Before to add the code of the kernels, we add the code of dependencies. It can be done directly by the following code, just after ```using PlatformAware```:

```julia
import CUDA
import OpenCL
import FFTW
```
However,  as we can take advantage of platform-aware features to load dependencies selectively. For that, we declare a kernel function called ```which_api```, declared just after the sequence of ```@platform parameter``` declarations:

```julia
@platform default which_api() = :fftw
@platform aware which_api({accelerator_api::(@api CUDA)}) = :clfft
@platform aware which_api({accelerator_api::(@api OpenCL)}) = :cufft
```

Then, we write code to selective dependency loading:

```julia
api = which_api()
if (api == :cufft) 
    import CUDA
elseif (api == :clfft) 
    import OpenCL
else # api == :fftw 
    import FFTW
end

```

Finally, we present the complete code of _MyFFT.jl_, by implementing the kernel methods:

```julia

module MyFFT

    import PlatformAware

    @platform parameter clear
    @platform parameter accelerator_api

    @platform default which_api() = :fftw
    @platform aware which_api({accelerator_api::(@api CUDA)}) = :clfft
    @platform aware which_api({accelerator_api::(@api OpenCL)}) = :cufft

    api = which_api
    if (api == :cufft) 
        import CUDA; const cufft = CUDA.FFT
    elseif (api == :clfft) 
        import OpenCL; const cl = OpenCL
	import CLFFF; const clfft = CLFFT
    else # api == :fftw 
        import FFTW; const fftw = FFTW
    end

    # Fallback kernel
    @platform default fft(X) = fftw.fft(X)

    # OpenCL kernel
    @platform aware function fft({accelerator_api::(@api OpenCL)}, X)
        _, ctx, queue = cl.create_compute_context()
        bufX = cl.Buffer(Complex64, ctx, :copy, hostbuf=X)
        p = clfft.Plan(Complex64, ctx, size(X))
        clfft.set_layout!(p, :interleaved, :interleaved)
        clfft.set_result!(p, :inplace)
        clfft.bake!(p, queue)
        clfft.enqueue_transform(p, :forward, [queue], bufX, nothing)
        cl.read(queue, bufX)
    end

    # CUDA kernel
    @platform aware fft({accelerator_api::(@api CUDA)},X) = cufft.fft(X)

    export fft

end # module MyFFT

```

### Guideline

The following is a general guideline for package developers to use _PlatformWare.jl_.

1. Identify the _kernel functions_, that is, the functions with high computational requirements in your package, which are the natural candidates to exploit parallel computing or acceleration resources, or both.

2. Provide a default (fallback) method for each kernel function, using the ```@platform default``` macro.

3. Identify the target execution platforms to which you want to provide specialized methods for each kernel function. You can choose a set of execution platforms for all kernels, or you can select one or more platforms for each kernel independently. For helping your choice, look at the following information sources:
   - the [table of supported _platform **parameters**_](https://docs.google.com/spreadsheets/d/1n-c4b7RxUduaKV43XrTnt54w-SR1AXgVNI7dN2OkEUc/edit?usp=sharing), which will help you to know which assumptions _PlatformAware.jl_ already allow you to make about the target execution platorm;
   - the database of supported _platform **features**_, where the features of the models of processors and accelerators that are currently suported by _PlatformAware.jl_ are described:
      - AMD [accelerators](https://github.com/decarvalhojunior-fh/PlatformAware.jl/blob/master/src/platforms/amd/db-accelerators.AMD.csv) and [processors](https://github.com/decarvalhojunior-fh/PlatformAware.jl/blob/master/src/platforms/amd/db-processors.AMD.csv);
      - Intel [accelerators](https://github.com/decarvalhojunior-fh/PlatformAware.jl/blob/master/src/platforms/intel/db-accelerators.Intel.csv) and [processors](https://github.com/decarvalhojunior-fh/PlatformAware.jl/blob/master/src/platforms/intel/db-processors.Intel.csv);
      - NVIDIA [accelerators](https://github.com/decarvalhojunior-fh/PlatformAware.jl/blob/master/src/platforms/nvidia/db-accelerators.NVIDIA.csv).

4. For each platform you select, define a set of assumptions about its features that will guide your implementation decisions. In fact, it is possible to define different assumptions for the same platform, leading to multiple implementations of a kernel for the same platform. For example, you might decide to implement different parallel algorithms to solve a problem according to the number of nodes and the interconnection characteristics of a cluster.

5. Provide platform-aware methods for each kernel function using the ```@platform aware``` macro.

6. After implementing and testing all platform-aware methods, you have a list of platform parameters that were used to make assumptions about the target execution platform(s). You can optionally instruct the _PlatformAware.jl_ to use only that parameters by using the ``@platform parameter`` macro. 

# Contributing

Contributions are very welcome, as are feature requests and suggestions.

Please [open an issue](https://github.com/decarvalhojunior-fh/PlatformAware.jl) if you encounter any problems.

# License

_PlatformAware.jl_ is licensed under the [MIT License](https://github.com/decarvalhojunior-fh/PlatformAware.jl/blob/master/LICENSE) 

[build-img]: https://img.shields.io/github/workflow/status/JuliaEarth/ImageQuilting.jl/CI
[build-url]: https://github.com/decarvalhojunior-fh/PlatformAware.jl/actions


