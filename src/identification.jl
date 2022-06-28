# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

global actual_platform_arguments_all = Dict(
    :node_count => :(Tuple{AtLeast1,AtMostInf}),
    :node_maintainer => :(OnPremise),
    :node_machinefamily => :(MachineFamily),
    :node_machinetype => :(MachineType),
    :node_machinesize => :(MachineSize),
    :node_memory_size => :(Tuple{AtLeast0,AtMostInf}),
    :node_memory_latency => :(Tuple{AtLeast0,AtMostInf}),
    :node_memory_bandwidth => :(Tuple{AtLeast0,AtMostInf}),
    :node_memory_type => :(MemorySystem),
    :node_virtual => :(Query),
    :node_dedicated => :(Query),
    :processor_count => :(Tuple{AtLeast1,AtMostInf}),
    :processor_manufacturer => :(Manufacturer),
    :processor_microarchitecture => :(ProcessorMicroarchitecture),
    :processor_simd => :(ProcessorSIMD),
    :processor_isa => :(ProcessorISA),
    :processor_energyefficiency => :(Tuple{AtLeast0,AtMostInf}),
    :processor_core_clock => :(Tuple{AtLeast0,AtMostInf}),
    :processor_core_count => :(Tuple{AtLeast1,AtMostInf}),
    :processor_core_threads_count => :(Tuple{AtLeast1,AtMostInf}),
#    :processor_core_cacheL1_mapping => :(CacheMapping),
#    :processor_core_cacheL1_size => :(Tuple{AtLeast0,AtMostInf}),
#    :processor_core_cacheL1_latency => :(Tuple{AtLeast0,AtMostInf}),
#    :processor_core_cacheL1_bandwidth => :(Tuple{AtLeast0,AtMostInf}),
#    :processor_core_cacheL1_linesize => :(Tuple{AtLeast0,AtMostInf}),
#    :processor_core_cacheL2_mapping => :(CacheMapping),
#    :processor_core_cacheL2_size => :(Tuple{AtLeast0,AtMostInf}),
#    :processor_core_cacheL2_latency => :(Tuple{AtLeast0,AtMostInf}),
#    :processor_core_cacheL2_bandwidth => :(Tuple{AtLeast0,AtMostInf}),
#    :processor_core_cacheL2_linesize => :(Tuple{AtLeast0,AtMostInf}),
#    :processor_cacheL3_mapping => :(CacheMapping),
#    :processor_cacheL3_size => :(Tuple{AtLeast0,AtMostInf}),
#    :processor_cacheL3_latency => :(Tuple{AtLeast0,AtMostInf}),
#    :processor_cacheL3_bandwidth => :(Tuple{AtLeast0,AtMostInf}),
#    :processor_cacheL3_linesize => :(Tuple{AtLeast0,AtMostInf}),
    :processor => :(Processor),
    :accelerator_count => :(Tuple{AtLeast4,AtMost4}),
    :accelerator_manufacturer => :(NVIDIA),
    :accelerator_type => :(AcceleratorType),
    :accelerator_architecture => :(Turing),
    :accelerator_api => :(AcceleratorBackend),
    :accelerator_memorysize => :(Tuple{AtLeast0,AtMostInf}),
    :accelerator_energyefficiency => :(Tuple{AtLeast0,AtMostInf}),
    :accelerator => :(Accelerator),
    :interconnection_starttime => :(Tuple{AtLeast0,AtMostInf}),
    :interconnection_latency => :(Tuple{AtLeast0,AtMostInf}),   
    :interconnection_bandwidth => :(Tuple{AtLeast0,AtMostInf}),
    :interconnection_topology => :(InterconnectionTopology),
    :interconnection_RDMA => :(Query),
    :interconnection => :(Interconnection),
    :storage_size => :(Tuple{AtLeast0,AtMostInf}),
    :storage_latency => :(Tuple{AtLeast0,AtMostInf}),
    :storage_bandwidth => :(Tuple{AtLeast0,AtMostInf}),
    :storage_networkbandwidth => :(Tuple{AtLeast0,AtMostInf}),
    :storage => :(Storage))

actual_platform_arguments = copy(actual_platform_arguments_all)

global variables_all = Dict(
    :node_count => :NC,
    :node_maintainer => :M,
    :node_machinefamily => :Mf,
    :node_machinetype => :Mt,
    :node_machinesize => :Ms,
    :node_memory_size => :MZ,
    :node_memory_latency => :ML,
    :node_memory_bandwidth => :MB,
    :node_memory_type => :MY,
    :node_virtual => :V,
    :node_dedicated => :D,
    :processor_count => :PC,
    :processor_manufacturer => :PU,
    :processor_microarchitecture => :PA,
    :processor_simd => :PS,
    :processor_isa => :PI,
    :processor_energyefficiency => :PE,
    :processor_core_clock => :PCL,
    :processor_core_count => :CC,
    :processor_core_threads_count => :TC,
#    :processor_core_cacheL1_mapping => :PC1M,
#    :processor_core_cacheL1_size => :PC1S,
#    :processor_core_cacheL1_latency => :PC1T,
#    :processor_core_cacheL1_bandwidth => :PC1B,
#    :processor_core_cacheL1_linesize => :PC1L,
#    :processor_core_cacheL2_mapping => :PC2M,
#    :processor_core_cacheL2_size => :PC2S,
#    :processor_core_cacheL2_latency => :PC2T,
#    :processor_core_cacheL2_bandwidth => :PC2B,
#    :processor_core_cacheL2_linesize => :PC2L,
#    :processor_cacheL3_mapping => :PC3M,
#    :processor_cacheL3_size => :PC3S,
#    :processor_cacheL3_latency => :PC3T,
#    :processor_cacheL3_bandwidth => :PC3B,
#    :processor_cacheL3_linesize => :PC3L,
    :processor => :P,
    :accelerator_count => :AC,
    :accelerator_manufacturer => :AU,
    :accelerator_type => :AT,
    :accelerator_architecture => :AA,
    :accelerator_api => :API,
    :accelerator_memorysize => :AG,
    :accelerator_energyefficiency => :AE,
    :accelerator => :AM,
    :interconnection_starttime => :IS,
    :interconnection_latency => :IL,
    :interconnection_bandwidth => :IB,
    :interconnection_topology => :IT,
    :interconnection_RDMA => :IR,
    :interconnection => :I,
    :storage_size => :SS,
    :storage_latency => :SL,
    :storage_bandwidth => :SB,
    :storage_networkbandwidth => :SN,
    :storage => :ST)

global variables = copy(variables_all)

global platform_variable_types_all = Dict(
    :node_maintainer => :(M<:Type{<:OnPremise}),
    :node_count => :(NC<:Type{<:(Tuple{AtLeast1,AtMostInf})}),
    :node_machinefamily => :(Mf<:Type{<:MachineFamily}),
    :node_machinetype => :(Mt<:Type{<:MachineType}),
    :node_machinesize => :(Ms<:Type{<:MachineSize}),
    :node_virtual => :(V<:Type{<:Query}),
    :node_dedicated => :(D<:Type{<:Query}),
    :processor_count => :(PC<:Type{<:Tuple{AtLeast1,AtMostInf}}),
    :processor_core_clock => :(PCL<:Type{<:Tuple{AtLeast0,AtMostInf}}),
    :processor_core_count => :(CC<:Type{<:Tuple{AtLeast1,AtMostInf}}),
    :processor_core_threads_count => :(TC<:Type{<:Tuple{AtLeast1,AtMostInf}}),
    :processor_manufacturer => :(PU<:Type{<:Manufacturer}),
    :processor_microarchitecture => :(PA<:Type{<:ProcessorMicroarchitecture}),
    :processor_isa => :(PI<:Type{<:ProcessorISA}),
    :processor_simd => :(PS<:Type{<:ProcessorSIMD}),
    :processor_energyefficiency => :(PE<:Type{<:Tuple{AtLeast0,AtMostInf}}),
#    :(PC1M<:Type{<:CacheMapping}),
#    :(PC1S<:Type{<:(Tuple{AtLeast0,AtMostInf})}),
#    :(PC1T<:Type{<:(Tuple{AtLeast0,AtMostInf})}),
#    :(PC1B<:Type{<:(Tuple{AtLeast0,AtMostInf})}),
#    :(PC1L<:Type{<:(Tuple{AtLeast0,AtMostInf})}),
#    :(PC2M<:Type{<:CacheMapping}),
#    :(PC2S<:Type{<:(Tuple{AtLeast0,AtMostInf})}),
#    :(PC2T<:Type{<:(Tuple{AtLeast0,AtMostInf})}),
#    :(PC2B<:Type{<:(Tuple{AtLeast0,AtMostInf})}),
#    :(PC2L<:Type{<:(Tuple{AtLeast0,AtMostInf})}),
#    :(PC3M<:Type{<:CacheMapping}),
#    :(PC3S<:Type{<:(Tuple{AtLeast0,AtMostInf})}),
#    :(PC3T<:Type{<:(Tuple{AtLeast0,AtMostInf})}),
#    :(PC3B<:Type{<:(Tuple{AtLeast0,AtMostInf})}),
#    :(PC3L<:Type{<:(Tuple{AtLeast0,AtMostInf})}),
    :processor => :(P<:Type{<:Processor}),
    :node_memory_size => :(MZ<:Type{<:Tuple{AtLeast0,AtMostInf}}),
    :node_memory_latency => :(ML<:Type{<:Tuple{AtLeast0,AtMostInf}}),
    :node_memory_bandwidth => :(MB<:Type{<:Tuple{AtLeast0,AtMostInf}}),
    :node_memory_type => :(MY<:Type{<:MemorySystem}),
    :accelerator_count => :(AC<:Type{<:(Tuple{AtLeast0,AtMostInf})}),
    :accelerator_manufacturer => :(AU<:Type{<:Manufacturer}),
    :accelerator_type => :(AT<:Type{<:AcceleratorType}),
    :accelerator_architecture => :(AA<:Type{<:AcceleratorArchitecture}),
    :accelerator_api => :(API<:Type{<:AcceleratorBackend}),
    :accelerator_memorysize => :(AG<:Type{<:Tuple{AtLeast0,AtMostInf}}),
    :accelerator_energyefficiency => :(AE<:Type{<:Tuple{AtLeast0,AtMostInf}}),
    :accelerator => :(AM<:Type{<:Accelerator}),
    :interconnection_starttime => :(IS<:Type{<:Tuple{AtLeast0,AtMostInf}}),
    :interconnection_latency => :(IL<:Type{<:Tuple{AtLeast0,AtMostInf}}),
    :interconnection_bandwidth => :(IB<:Type{<:Tuple{AtLeast0,AtMostInf}}),
    :interconnection_topology => :(IT<:Type{<:InterconnectionTopology}),
    :interconnection_RDMA => :(IR<:Type{<:Query}),
    :interconnection => :(I<:Type{<:Interconnection}),
    :storage_size => :(SS<:Type{<:Tuple{AtLeast0,AtMostInf}}),
    :storage_latency => :(SL<:Type{<:Tuple{AtLeast0,AtMostInf}}),
    :storage_bandwidth => :(SB<:Type{<:Tuple{AtLeast0,AtMostInf}}),
    :storage_networkbandwidth => :(SN<:Type{<:Tuple{AtLeast0,AtMostInf}}),
    :storage => :(ST<:Type{<:Storage})
)

platform_variable_types = Vector()
for v in values(platform_variable_types_all)
    push!(platform_variable_types, v)
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
    empty!(variables)
    empty!(platform_variable_types)
end

function reset_actual_platform_arguments!()
    for (k,v) in actual_platform_arguments_all
        actual_platform_arguments[k] = v
    end
    for (k,v) in variables_all
        variables[k] = v
    end
    for v in values(platform_variable_types_all)
        push!(platform_variable_types, v)
    end
    keys(actual_platform_arguments)
end

function include_actual_platform_argument!(f)
    actual_platform_arguments[f] = actual_platform_arguments_all[f]
    variables[f] = variables_all[f]
    push!(platform_variable_types, platform_variable_types_all[f])
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



function platform_parameters_kernel(ppars)
    platform_parameters = map(p->Expr(:kw,Expr(:(::),p[1],variables[p[1]]),p[2]), collect(actual_platform_arguments))
    p1 = map(x-> x.args[1], platform_parameters)
    p2 = Dict(); foreach(x->get!(p2, check(x.args[1]), x.args[2]), ppars)
    p2_inv = Dict()
    platform_parameters_kernel = map(x-> (found = get(p2, x.args[1],nothing); if (isnothing(found)) x else get!(p2_inv, x.args[2], x.args[2]); :($(x.args[1])::Type{<:$found}) end), p1)
    platform_variables_kernel = filter(x-> (isnothing(get(p2_inv, if (typeof(x) == Symbol) x else x.args[1] end, nothing))), platform_variable_types)
    (platform_parameters_kernel, platform_variables_kernel)
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
        eval(build_entry_function(f))   
        eval(build_kernel_function(f))
    elseif (t == :aware)
        denyaddparameter!()
        eval(build_kernel_function(f))
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
    platform_parameters = map(p->Expr(:kw,Expr(:(::),p[1],variables[p[1]]),p[2]), collect(actual_platform_arguments))
    # rebuild the keyword parameters node for the entry function, including the platform_parameters
    keyword_parameters_node = Expr(:parameters, platform_parameters..., keyword_parameters...)
    # collect the identifiers of the kernel parameters
    fargs = map(collect_arg_names, call_node_args)
    # collect the identifiers of the keyword parameters
    kargs = map(p -> p.args[1] , keyword_parameters)
    # build the argument list of the call node (:call) of the entry function
    new_call_node_args = [fname, keyword_parameters_node, call_node_args...]
    return (fname, fargs, kargs, Expr(:where, Expr(:call, new_call_node_args...), where_vars..., platform_variable_types...))
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
    (ppars, pvars) = platform_parameters_kernel(aware_parameters_args)
    new_call_node_args = isnothing(keyword_parameters_node) ? [fname, ppars..., call_node_args...] : [fname, keyword_parameters_node, ppars..., call_node_args...]
    Expr(:where, Expr(:call, new_call_node_args...), where_vars..., pvars...)
end


# utility functions

function collect_arg_names(par)
    if (typeof(par) == Symbol)
       par
    elseif (par.head == :kw)
        par.args[1].args[1]
    elseif (par.head == :(::))
        par.args[1]
    end
end