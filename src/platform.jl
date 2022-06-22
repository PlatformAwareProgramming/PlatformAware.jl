# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

actual_platform_arguments = Dict(
    :node_count => :(@atleast 1),
    :node_maintainer => :(OnPremise),
    :node_machinefamily => :(MachineFamily),
    :node_machinetype => :(MachineType),
    :node_machinesize => :(MachineSize),
    :node_memory_size => :(@atleast 0),
    :node_memory_latency => :(@atmost ∞),
    :node_memory_bandwidth => :(@atleast 0),
    :node_memory_type => :(MemorySystem{(@atleast 0), (@atmost ∞), (@atleast 0)}),
    :node_virtual => :(Query),
    :node_dedicated => :(Query),
    :processor_count => :(@atleast 1),
    :processor_manufacturer => :(Manufacturer),
    :processor_family => :(ProcessorFamily{Manufacturer}),
    :processor_series => :(ProcessorSeries{Manufacturer,ProcessorFamily{Manufacturer}}),
    :processor_microarchitecture => :(ProcessorMicroarchitecture{Manufacturer}),
    :processor_simd => :(ProcessorSIMD),
    :processor_isa => :(ProcessorISA),
    :processor_energyefficiency => :(@atleast 0),
    :processor_core_clock => :(@atleast 0),
    :processor_core_count => :(@atleast 1),
    :processor_core_threads_count => :(@atleast 1),
#    :processor_core_cacheL1_mapping => :(CacheMapping),
#    :processor_core_cacheL1_size => :(@atleast 0),
#    :processor_core_cacheL1_latency => :(@atmost ∞),
#    :processor_core_cacheL1_bandwidth => :(@atleast 0),
#    :processor_core_cacheL1_linesize => :(@atmost ∞),
#    :processor_core_cacheL2_mapping => :(CacheMapping),
#    :processor_core_cacheL2_size => :(@atleast 0),
#    :processor_core_cacheL2_latency => :(@atmost ∞),
#    :processor_core_cacheL2_bandwidth => :(@atleast 0),
#    :processor_core_cacheL2_linesize => :(@atmost ∞),
#    :processor_cacheL3_mapping => :(CacheMapping),
#    :processor_cacheL3_size => :(@atleast 0),
#    :processor_cacheL3_latency => :(@atmost ∞),
#    :processor_cacheL3_bandwidth => :(@atleast 0),
#    :processor_cacheL3_linesize => :(@atmost ∞),
    :processor => :(Processor{(@atleast 1),(@atleast 0),(@atleast 1),(@atleast 1),Manufacturer,ProcessorFamily{Manufacturer},ProcessorSeries{Manufacturer,ProcessorFamily{Manufacturer}},ProcessorMicroarchitecture{Manufacturer},ProcessorSIMD,ProcessorISA, (@atleast 0)}),
    :accelerator_count => :(@just 4),
    :accelerator_manufacturer => :(NVIDIA),
    :accelerator_type => :(AcceleratorType{NVIDIA}),
    :accelerator_architecture => :(Turing#=AcceleratorArchitecture{Manufacturer}=#),
    :accelerator_api => :(AcceleratorBackend),
    :accelerator_memorysize => :(@atleast 0),
    :accelerator_energyefficiency => :(@atleast 0),
    :accelerator => :(Accelerator{NVIDIA,AcceleratorType{NVIDIA},AcceleratorArchitecture{NVIDIA},AcceleratorBackend, (@atleast 0), (@atleast 0)}),
    :interconnection_starttime => :(@atmost ∞),
    :interconnection_latency => :(@atmost ∞),
    :interconnection_bandwidth => :(@atleast 0),
    :interconnection_topology => :(InterconnectionTopology),
    :interconnection_RDMA => :(Query),
    :interconnection => :(Interconnection{(@atmost ∞), (@atmost ∞), (@atleast 0),InterconnectionTopology, Query}),
    :storage_size => :(@atleast 0),
    :storage_latency => :(@atmost ∞),
    :storage_bandwidth => :(@atleast 0),
    :storage_networkbandwidth => :(@atleast 0),
    :storage => :(Storage{(@atleast 0), (@atmost ∞), (@atleast 0), (@atleast 0)}))


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



platform_variables =
   [:(PC_<:(@atleast 1)),
    :(PCL_<:(@atleast 0)),
    :(CC_<:(@atleast 1)),
    :(TC_<:(@atleast 1)),
    :(PU_<:Manufacturer),
    :(PF_<:ProcessorFamily{PU_}),
    :(PR_<:ProcessorSeries{PU_,PF_}),
    :(PA_<:ProcessorMicroarchitecture{PU_}),
    :(PI_<:ProcessorISA),
    :(PS_<:ProcessorSIMD),
    :(PE_<:(@atleast 0)),
    :(MZ_<:(@atleast 0)),
    :(ML_<:(@atmost ∞)),
    :(MB_<:(@atleast 0)),
    :(AU_<:Manufacturer),
    :(AT_<:AcceleratorType{AU_}),
    :(AA_<:AcceleratorArchitecture{AU_}),
    :(API_<:AcceleratorBackend),
    :(AG_<:(@atleast 0)),
    :(AE_<:(@atleast 0)),
    :(IS_<:(@atmost ∞)),
    :(IL_<:(@atmost ∞)),
    :(IB_<:(@atleast 0)),
    :(IT_<:InterconnectionTopology),
    :(IR_<:Query),
    :(SS_<:(@atleast 0)),
    :(SL_<:(@atmost ∞)),
    :(SB_<:(@atleast 0)),
    :(SN_<:(@atleast 0)),
    :(M<:Type{<:OnPremise}),
    :(NC<:Type{<:(@atleast 1)}),
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
#    :(PC1S<:Type{<:(@atleast 0)}),
#    :(PC1T<:Type{<:(@atmost ∞)}),
#    :(PC1B<:Type{<:(@atleast 0)}),
#    :(PC1L<:Type{<:(@atmost ∞)}),
#    :(PC2M<:Type{<:CacheMapping}),
#    :(PC2S<:Type{<:(@atleast 0)}),
#    :(PC2T<:Type{<:(@atmost ∞)}),
#    :(PC2B<:Type{<:(@atleast 0)}),
#    :(PC2L<:Type{<:(@atmost ∞)}),
#    :(PC3M<:Type{<:CacheMapping}),
#    :(PC3S<:Type{<:(@atleast 0)}),
#    :(PC3T<:Type{<:(@atmost ∞)}),
#    :(PC3B<:Type{<:(@atleast 0)}),
#    :(PC3L<:Type{<:(@atmost ∞)}),
    :(P<:Type{<:Processor{PC_,PCL_,CC_,TC_,PU_,PF_,PR_,PA_,PS_,PI_,PE_}}),
    :(MZ<:Type{<:MZ_}),
    :(ML<:Type{<:ML_}),
    :(MB<:Type{<:MB_}),
    :(MY<:Type{<:MemorySystem{MZ_,ML_,MB_}}),
    :(AC<:Type{<:(@atleast 0)}),
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
    foreach(p->println(p), collect(actual_platform_arguments))
end


function platform_parameters_kernel(ppars)
    platform_parameters = map(p->Expr(:kw,Expr(:(::),p[1],variables[p[1]]),p[2]), collect(actual_platform_arguments))
    p1 = map(x-> x.args[1], platform_parameters)
    p2 = Dict(); foreach(x->get!(p2, check(x.args[1]), x.args[2]), ppars)
    p2_inv = Dict()
    platform_parameters_kernel = map(x-> (found = get(p2, x.args[1],nothing); if (isnothing(found)) x else get!(p2_inv, x.args[2], x.args[2]); :($(x.args[1])::Type{<:$found}) end), p1)
    platform_variables_kernel = filter(x-> (isnothing(get(p2_inv, if (typeof(x) == Symbol) x else x.args[1] end,nothing))), platform_variables)
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
    platform_parameters = map(p->Expr(:kw,Expr(:(::),p[1],variables[p[1]]),p[2]), collect(actual_platform_arguments))
    (fname, fargs, fsign) = build_entry_signature(f.args[1], platform_parameters)
    fbody = build_entry_body(fname, fargs, platform_parameters)
    Expr(:function, fsign, fbody)
end

function build_entry_signature(fsign::Expr, platform_parameters)
    fsign_args = copy(fsign.args)
    (call_node, where_vars) = fsign.head == :where ? (popfirst!(fsign_args), fsign_args) : (fsign, []) 
    call_node_args = copy(call_node.args)
    fname = popfirst!(call_node_args)
    keyword_parameters = length(call_node_args) > 1 && typeof(call_node_args[1]) == Expr && call_node_args[1].head == :parameters ? popfirst!(call_node_args).args : []
    keyword_parameters_node = Expr(:parameters, keyword_parameters..., platform_parameters...)
    fargs = map(collect_arg_names, call_node_args)
    new_call_node_args = [fname, keyword_parameters_node, call_node_args...]
    return (fname, fargs, Expr(:where, Expr(:call, new_call_node_args...), where_vars..., platform_variables...))
end

function build_entry_body(fname, fargs, platform_parameters)
    pargs = map(collect_arg_names, platform_parameters)
    Expr(:call, fname, fargs..., pargs...)
end


# build_kernel_function

function build_kernel_function(f::Expr)
    fsign = build_kernel_signature(f.args[1])
    Expr(:function,fsign,f.args[2])
end

function build_kernel_signature(fsign::Expr)
    fsign_args = copy(fsign.args)
    (call_node, where_vars) = fsign.head == :where ? (popfirst!(fsign_args), fsign_args) : (fsign, []) 
    call_node_args = copy(call_node.args)
    fun_name = popfirst!(call_node_args)
    keyword_parameters_node = typeof(call_node_args[1]) == Expr && call_node_args[1].head == :parameters ? popfirst!(call_node_args) : nothing
    aware_parameters_args = typeof(call_node_args[1]) == Expr && call_node_args[1].head == :braces ? popfirst!(call_node_args).args : [] 
    (ppars, pvars) = platform_parameters_kernel(aware_parameters_args)
    new_call_node_args = keyword_parameters_node == nothing ? [fun_name,call_node_args...,ppars...] : [fun_name,keyword_parameters_node,call_node_args...,ppars...]
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