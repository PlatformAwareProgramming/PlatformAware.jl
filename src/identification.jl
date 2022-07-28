# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

global default_platform_types_all = Dict(
    :node_count => Tuple{AtLeast1,AtMostInf},
    :node_provider => Provider,
    :node_virtual => Query,
    :node_dedicated => Query,
    :node_machinefamily => MachineFamily,
    :node_machinetype => MachineType,
    :node_machinesize => MachineSize,
    :node_vcpus_count => Tuple{AtLeast1,AtMostInf},
    :node_memory_size => Tuple{AtLeast0,AtMostInf},
    :node_memory_latency => Tuple{AtLeast0,AtMostInf},
    :node_memory_bandwidth => Tuple{AtLeast0,AtMostInf},
    :node_memory_type => MemoryType,
    :node_memory_frequency => Tuple{AtLeast1,AtMostInf},
    :processor_count => Tuple{AtLeast1,AtMostInf},
    :processor_manufacturer => Manufacturer,
    :processor_microarchitecture => ProcessorMicroarchitecture,
    :processor_simd => ProcessorSIMD,
    :processor_isa => ProcessorISA,
    :processor_tdp => Tuple{AtLeast0,AtMostInf},
    :processor_core_clock => Tuple{AtLeast0,AtMostInf},
    :processor_core_count => Tuple{AtLeast1,AtMostInf},
    :processor_core_threads_count => Tuple{AtLeast1,AtMostInf},
#    :processor_core_L1_mapping => :PC1M,
    :processor_core_L1_size => Tuple{AtLeast0,AtMostInf},
#    :processor_core_L1_latency => :PC1T,
#    :processor_core_L1_bandwidth => :PC1B,
#    :processor_core_L1_linesize => :PC1L,
#    :processor_core_L2_mapping => :PC2M,
    :processor_core_L2_size => Tuple{AtLeast0,AtMostInf},
#    :processor_core_L2_latency => :PC2T,
#    :processor_core_L2_bandwidth => :PC2B,
#    :processor_core_L2_linesize => :PC2L,
#    :processor_L3_mapping => :PC3M,
    :processor_L3_size => Tuple{AtLeast0,AtMostInf},
#    :processor_L3_latency => :PC3T,
#    :processor_L3_bandwidth => :PC3B,
#    :processor_L3_linesize => :PC3L,
    :processor => Processor,
    :accelerator_count => Tuple{AtLeast0,AtMostInf},
    :accelerator_type => AcceleratorType,
    :accelerator_manufacturer => Manufacturer,
    :accelerator_api => AcceleratorBackend,
    :accelerator_architecture => AcceleratorArchitecture,
    :accelerator_memorysize => Tuple{AtLeast0,AtMostInf},
    :accelerator_tdp => Tuple{AtLeast0,AtMostInf},
    :accelerator => Accelerator,
    :interconnection_startuptime => Tuple{AtLeast0,AtMostInf},
    :interconnection_latency => Tuple{AtLeast0,AtMostInf},
    :interconnection_bandwidth => Tuple{AtLeast0,AtMostInf},
    :interconnection_topology => InterconnectionTopology,
    :interconnection_RDMA => Query,
    :interconnection => Interconnection,
    :storage_size => Tuple{AtLeast0,AtMostInf},
    :storage_latency => Tuple{AtLeast0,AtMostInf},
    :storage_bandwidth => Tuple{AtLeast0,AtMostInf},
    :storage_networkbandwidth => Tuple{AtLeast0,AtMostInf},
    :storage_type => StorageType,
    :storage_interface => StorageInterface
)

global default_platform_types = copy(default_platform_types_all)

function loadFeatures(actual_platform_arguments_all)
    platform_description_dict = readPlatormDescription()
    loadFeatures!(platform_description_dict, default_platform_types_all, actual_platform_arguments_all)
end

global actual_platform_arguments_all = Dict()
loadFeatures(actual_platform_arguments_all)
actual_platform_arguments = Dict(actual_platform_arguments_all)

function reload!()
    empty!(actual_platform_arguments_all)
    loadFeatures(actual_platform_arguments_all)
    empty!(actual_platform_arguments)
    for (k,v) in actual_platform_arguments_all
        actual_platform_arguments[k] = v
    end
end
 
function setplatform!(parameter_id, actual_type)
    actual_platform_arguments[parameter_id] = actual_type
    (parameter_id,actual_type)
end

function getplatform(parameter_id)
    actual_platform_arguments[parameter_id]
end

function getplatform()
    actual_platform_arguments
end

function empty_actual_platform_arguments!()
    empty!(actual_platform_arguments)
    empty!(default_platform_types)
end

function reset_actual_platform_arguments!()
    for (k,v) in actual_platform_arguments_all
        actual_platform_arguments[k] = v
    end
    for (k,v) in platform_types_all
        default_platform_types[k] = v
    end
    keys(actual_platform_arguments)
end

function include_actual_platform_argument!(f)
    actual_platform_arguments[f] = actual_platform_arguments_all[f]
    default_platform_types[f] = default_platform_types_all[f]
    keys(actual_platform_arguments)
end


function platform_parameter_macro!(f)

    if (f == :clear)
        empty_actual_platform_arguments!()
    elseif (f == :all)
        reset_actual_platform_arguments!()
    else
        check_all(f)
        include_actual_platform_argument!(f)
    end
 end


function platform_parameters_kernel(p_list)

    # move p_list (p::T) to p_dict (p => T)
    p_dict = Dict(); foreach(x->get!(p_dict, check(x.args[1]), x.args[2]), p_list)

    # replace default types to required types in kernel platform parameters
    r = []
    for k in keys(actual_platform_arguments)
         found = get(p_dict, k, nothing)
         v = default_platform_types[k]
         push!(r, isnothing(found) ? :(::Type{<:$v}) : :(::Type{<:$found}))
    end

    return r
end

function check_all(parameter_id)
    if (!haskey(actual_platform_arguments_all,parameter_id))
        throw(parameter_id)
    end
    parameter_id
end

function check(parameter_id)
    if (!haskey(actual_platform_arguments,parameter_id))
        throw(parameter_id)
    end
    parameter_id
end

global const can_add_parameter = Ref{Bool}(true)

function denyaddparameter!()
    global can_add_parameter[] = false
end

function getaddparameter()
    return can_add_parameter[]
end


macro platform(t,f)
    if (t == :default)
        # @platform default creates an entry function, called from outside, and a (default) kernel function 
        denyaddparameter!()
        e = build_entry_function(f)
        k = build_kernel_function(f)
        return esc(:($e;$k))
        #return k
    elseif (t == :aware)
        denyaddparameter!()
        return esc(build_kernel_function(f))
    elseif (t == :parameter && getaddparameter())
        platform_parameter_macro!(f)
    elseif (t == :parameter && !getaddparameter())
        println("cannot add parameters after including the first kernel method")
    else
        println("usage: platform [default | aware] <function declaration>")
        println("       platform parameter :(<parameter name>)")
    end
 end

 # build_entry_function

function build_entry_function(f::Expr)
    # builds the entry function signature
    (fname, fargs, kargs, fsign) = build_entry_signature(f.args[1])
    # builds the entry function body
    fbody = build_entry_body(fname, fargs, kargs)
    # builds the :function node
    Expr(:function, fsign, fbody)
end

function build_entry_signature(fsign::Expr)
    fsign_args = copy(fsign.args)
    # take the :call node arguments from inside the :where node if there is a where clause in the default kernel. where_vars == [] if it does not exist.
    (call_node_args, where_vars) = fsign.head == :where ? (popfirst!(fsign_args).args, fsign_args) : (fsign_args, []) 
    # takes the name of the kernel (first argument to :call)
    fname = popfirst!(call_node_args)
    # look for the existence of keyword parameters (second argument to :call). keyword_parameters == [], if they do not exist.
    keyword_parameters = length(call_node_args) > 1 && typeof(call_node_args[1]) == Expr && call_node_args[1].head == :parameters ? popfirst!(call_node_args).args : []
    # takes a dictionary mapping par->actual_type and returns an expression :(par::actual_type)
    # the remaining elements in call_node_args are the kernel parameters.
    platform_parameters = map(p->Expr(:kw,Expr(:(::),p[1],Type{<:default_platform_types[p[1]]}),p[2]), collect(actual_platform_arguments))
    # rebuild the keyword parameters node for the entry function, including the platform_parameters
    keyword_parameters_node = Expr(:parameters, platform_parameters..., keyword_parameters...)
    # collect the identifiers of the kernel parameters
    fargs = map(collect_arg_names, call_node_args)
    # collect the identifiers of the keyword parameters
    kargs = map(p -> p.args[1] , keyword_parameters)
    # build the argument list of the call node (:call) of the entry function
    new_call_node_args = [fname, keyword_parameters_node, call_node_args...]
    return (fname, fargs, kargs, Expr(:where, Expr(:call, new_call_node_args...), where_vars...))
end

function build_entry_body(fname, fargs, kargs)
    # takes the identifiers of the platform parameters
    pargs = keys(actual_platform_arguments)
    # builds the :parameters node for the keyword arguments of the kernel invocation (kargs), since the identifiers must be refferenced.
    kargs = Expr(:parameters, map(p -> Expr(:kw, p, p), kargs)...)
    # returns the :call node for the kernel invocation (note that platform arguments comes before kernel arguments)
    Expr(:call, fname, kargs, pargs..., fargs...)
end


# build_kernel_function

function build_kernel_function(f::Expr)
    # builds the kernel signature. The kernel's body (f.args[2]) is not modified.
    fsign = build_kernel_signature(f.args[1])
    # returns the :function node.
    Expr(:function, fsign, f.args[2])
end

# the code is similar to the code of build_kernel_entry
function build_kernel_signature(fsign::Expr)
    fsign_args = copy(fsign.args)
    (call_node_args, where_vars) = fsign.head == :where ? (popfirst!(fsign_args).args, fsign_args) : (fsign.args, []) 
    fname = popfirst!(call_node_args)
    keyword_parameters_node = typeof(call_node_args[1]) == Expr && call_node_args[1].head == :parameters ? popfirst!(call_node_args) : nothing
    # takes the platform parameters of the kernel
    aware_parameters_args = typeof(call_node_args[1]) == Expr && call_node_args[1].head == :braces ? popfirst!(call_node_args).args : [] 
    # inserts the kernel's platform parameters into the list platform parameters.
    ppars = platform_parameters_kernel(aware_parameters_args)
    new_call_node_args = isnothing(keyword_parameters_node) ? [fname, ppars..., call_node_args...] : [fname, keyword_parameters_node, ppars..., call_node_args...]
    Expr(:where, Expr(:call, new_call_node_args...), where_vars...)
end


# utility functions

function collect_arg_names(par)
    if (typeof(par) == Symbol)
       par
    elseif (par.head == :kw)
        par.args[1].args[1]
    elseif (par.head == :(::))
        par.args[1]
    elseif (par.head == :(...))
        par.args[1]
    end
end