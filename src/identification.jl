# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

actual_platform_arguments = Dict(
    :node_count => :(Tuple{AtLeast1,AtMostInf}),
    :node_maintainer => :(OnPremise),
    :node_machinefamily => :(MachineFamily),
    :node_machinetype => :(MachineType),
    :node_machinesize => :(MachineSize),
    :node_memory_size => :(Tuple{AtLeast0,AtMostInf}),
    :node_memory_latency => :(Tuple{AtLeast0,AtMostInf}),
    :node_memory_bandwidth => :(Tuple{AtLeast0,AtMostInf}),
    :node_memory_type => :(MemorySystem{(Tuple{AtLeast0,AtMostInf}), (Tuple{AtLeast0,AtMostInf}), (Tuple{AtLeast0,AtMostInf})}),
    :node_virtual => :(Query),
    :node_dedicated => :(Query),
    :processor_count => :(Tuple{AtLeast1,AtMostInf}),
    :processor_manufacturer => :(Manufacturer),
    :processor_family => :(ProcessorFamily{Manufacturer}),
    :processor_series => :(ProcessorSeries{Manufacturer,ProcessorFamily{Manufacturer}}),
    :processor_microarchitecture => :(ProcessorMicroarchitecture{Manufacturer}),
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
    :processor => :(Processor{(Tuple{AtLeast0,AtMostInf}),(Tuple{AtLeast1,AtMostInf}),(Tuple{AtLeast1,AtMostInf}),Manufacturer,ProcessorFamily{Manufacturer},ProcessorSeries{Manufacturer,ProcessorFamily{Manufacturer}},ProcessorMicroarchitecture{Manufacturer},ProcessorSIMD,ProcessorISA, (Tuple{AtLeast0,AtMostInf})}),
    :accelerator_count => :(Tuple{AtLeast4,AtMost4}),
    :accelerator_manufacturer => :(NVIDIA),
    :accelerator_type => :(AcceleratorType{NVIDIA}),
    :accelerator_architecture => :(Turing#=AcceleratorArchitecture{Manufacturer}=#),
    :accelerator_api => :(AcceleratorBackend),
    :accelerator_memorysize => :(Tuple{AtLeast0,AtMostInf}),
    :accelerator_energyefficiency => :(Tuple{AtLeast0,AtMostInf}),
    :accelerator => :(Accelerator{NVIDIA,AcceleratorType{NVIDIA},AcceleratorArchitecture{NVIDIA},AcceleratorBackend, (Tuple{AtLeast0,AtMostInf}), (Tuple{AtLeast0,AtMostInf})}),
    :interconnection_starttime => :(Tuple{AtLeast0,AtMostInf}),
    :interconnection_latency => :(Tuple{AtLeast0,AtMostInf}),   
    :interconnection_bandwidth => :(Tuple{AtLeast0,AtMostInf}),
    :interconnection_topology => :(InterconnectionTopology),
    :interconnection_RDMA => :(Query),
    :interconnection => :(Interconnection{(Tuple{AtLeast0,AtMostInf}), (Tuple{AtLeast0,AtMostInf}), (Tuple{AtLeast0,AtMostInf}),InterconnectionTopology, Query}),
    :storage_size => :(Tuple{AtLeast0,AtMostInf}),
    :storage_latency => :(Tuple{AtLeast0,AtMostInf}),
    :storage_bandwidth => :(Tuple{AtLeast0,AtMostInf}),
    :storage_networkbandwidth => :(Tuple{AtLeast0,AtMostInf}),
    :storage => :(Storage{(Tuple{AtLeast0,AtMostInf}), (Tuple{AtLeast0,AtMostInf}), (Tuple{AtLeast0,AtMostInf}), (Tuple{AtLeast0,AtMostInf})}))


variables = Dict(
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
    :processor_family => :PF,
    :processor_series => :PR,
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

platform_variable_types =
   [:(PC_<:(Tuple{AtLeast1,AtMostInf})),
    :(PCL_<:(Tuple{AtLeast0,AtMostInf})),
    :(CC_<:(Tuple{AtLeast1,AtMostInf})),
    :(TC_<:(Tuple{AtLeast1,AtMostInf})),
    :(PU_<:Manufacturer),
    :(PF_<:ProcessorFamily{PU_}),
    :(PR_<:ProcessorSeries{PU_,PF_}),
    :(PA_<:ProcessorMicroarchitecture{PU_}),
    :(PI_<:ProcessorISA),
    :(PS_<:ProcessorSIMD),
    :(PE_<:(Tuple{AtLeast0,AtMostInf})),
    :(MZ_<:(Tuple{AtLeast0,AtMostInf})),
    :(ML_<:(Tuple{AtLeast0,AtMostInf})),
    :(MB_<:(Tuple{AtLeast0,AtMostInf})),
    :(AU_<:Manufacturer),
    :(AT_<:AcceleratorType{AU_}),
    :(AA_<:AcceleratorArchitecture{AU_}),
    :(API_<:AcceleratorBackend),
    :(AG_<:(Tuple{AtLeast0,AtMostInf})),
    :(AE_<:(Tuple{AtLeast0,AtMostInf})),
    :(IS_<:(Tuple{AtLeast0,AtMostInf})),
    :(IL_<:(Tuple{AtLeast0,AtMostInf})),
    :(IB_<:(Tuple{AtLeast0,AtMostInf})),
    :(IT_<:InterconnectionTopology),
    :(IR_<:Query),
    :(SS_<:(Tuple{AtLeast0,AtMostInf})),
    :(SL_<:(Tuple{AtLeast0,AtMostInf})),
    :(SB_<:(Tuple{AtLeast0,AtMostInf})),
    :(SN_<:(Tuple{AtLeast0,AtMostInf})),
    :(M<:Type{<:OnPremise}),
    :(NC<:Type{<:(Tuple{AtLeast1,AtMostInf})}),
    :(Mf<:Type{<:MachineFamily}),
    :(Mt<:Type{<:MachineType}),
    :(Ms<:Type{<:MachineSize}),
    :(V<:Type{<:Query}),
    :(D<:Type{<:Query}),
    :(PC<:Type{<:PC_}),
    :(PCL<:Type{<:PCL_}),
    :(CC<:Type{<:CC_}),
    :(TC<:Type{<:TC_}),
    :(PU<:Type{<:PU_}),
    :(PF<:Type{<:PF_}),
    :(PR<:Type{<:PR_}),
    :(PA<:Type{<:PA_}),
    :(PI<:Type{<:PI_}),
    :(PS<:Type{<:PS_}),
    :(PE<:Type{<:PE_}),
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
    :(P<:Type{<:Processor{PCL_,CC_,TC_,PU_,PF_,PR_,PA_,PS_,PI_,PE_}}),
    :(MZ<:Type{<:MZ_}),
    :(ML<:Type{<:ML_}),
    :(MB<:Type{<:MB_}),
    :(MY<:Type{<:MemorySystem{MZ_,ML_,MB_}}),
    :(AC<:Type{<:(Tuple{AtLeast0,AtMostInf})}),
    :(AU<:Type{<:AU_}),
    :(AT<:Type{<:AT_}),
    :(AA<:Type{<:AA_}),
    :(API<:Type{<:API_}),
    :(AG<:Type{<:AG_}),
    :(AE<:Type{<:AE_}),
    :(AM<:Type{<:Accelerator{AU_,AT_,AA_,API_,AG_,AE_}}),
    :(IS<:Type{<:IS_}),
    :(IL<:Type{<:IL_}),
    :(IB<:Type{<:IB_}),
    :(IT<:Type{<:IT_}),
    :(IR<:Type{<:IR_}),
    :(I<:Type{<:Interconnection{IS_,IL_,IB_,IT_,IR_}}),
    :(SS<:Type{<:SS_}),
    :(SL<:Type{<:SL_}),
    :(SB<:Type{<:SB_}),
    :(SN<:Type{<:SN_}),
    :(ST<:Type{<:Storage{SS_,SL_,SB_,SN_}})]



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


function platform_parameters_kernel(ppars)
    platform_parameters = map(p->Expr(:kw,Expr(:(::),p[1],variables[p[1]]),p[2]), collect(actual_platform_arguments))
    p1 = map(x-> x.args[1], platform_parameters)
    p2 = Dict(); foreach(x->get!(p2, check(x.args[1]), x.args[2]), ppars)
    p2_inv = Dict()
    platform_parameters_kernel = map(x-> (found = get(p2, x.args[1],nothing); if (isnothing(found)) x else get!(p2_inv, x.args[2], x.args[2]); :($(x.args[1])::Type{<:$found}) end), p1)
    platform_variables_kernel = filter(x-> (isnothing(get(p2_inv, if (typeof(x) == Symbol) x else x.args[1] end, nothing))), platform_variable_types)
    (platform_parameters_kernel, platform_variables_kernel)
end

function check(parameter_id)
    if (!haskey(actual_platform_arguments,parameter_id))
        throw(parameter_id)
    end
    parameter_id
end

macro platform(t,f)
    if (t == :default)
        # @platform default creates an entry function, called from outside, and a (default) kernel function 
        eval(build_entry_function(f))   
        eval(build_kernel_function(f))
    elseif (t == :aware)
        eval(build_kernel_function(f))
    else
        println("usage: platform [default | aware] <function declaration>")
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
    (call_node_args, where_vars) = fsign.head == :where ? (popfirst!(fsign_args).args, fsign_args) : (fsign.args, []) 
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