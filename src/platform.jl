# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

actual_platform_arguments = [
    (:node_count, :(@between 8 8)),
    (:node_maintainer, :(OnPremise)),
    (:node_machinefamily, :(MachineFamily)),
    (:node_machinetype, :(MachineType)),
    (:node_machinesize, :(MachineSize)),
    (:node_memory_size, :(@atleast 0)),
    (:node_memory_latency, :(@atmost ∞)),
    (:node_memory_bandwidth, :(@atleast 0)),
    (:node_memory_type, :(MemorySystem{(@atleast 0), (@atmost ∞), (@atleast 0)})),
    (:node_virtual, :(Query)),
    (:node_dedicated, :(Query)),
    (:processor_count, :(@atleast 1)),
    (:processor_manufacturer, :(ProcessorManufacturer)),
    (:processor_family, :(ProcessorFamily{ProcessorManufacturer})),
    (:processor_series, :(ProcessorSeries{ProcessorManufacturer,ProcessorFamily{ProcessorManufacturer}})),
    (:processor_microarchitecture, :(ProcessorMicroarchitecture{ProcessorManufacturer})),
    (:processor_simd, :(ProcessorSIMDExt)),
    (:processor_isa, :(ProcessorISA)),
    (:processor_energyefficiency, :(@atleast 0)),
    (:processor_core_clock, :(@atleast 0)),
    (:processor_core_count, :(@atleast 1)),
    (:processor_core_threads_count, :(@atleast 1)),
    (:processor_core_cacheL1_mapping, :(CacheMapping)),
    (:processor_core_cacheL1_size, :(@atleast 0)),
    (:processor_core_cacheL1_latency, :(@atmost ∞)),
    (:processor_core_cacheL1_bandwidth, :(@atleast 0)),
    (:processor_core_cacheL1_linesize, :(@atmost ∞)),
    (:processor_core_cacheL2_mapping, :(CacheMapping)),
    (:processor_core_cacheL2_size, :(@atleast 0)),
    (:processor_core_cacheL2_latency, :(@atmost ∞)),
    (:processor_core_cacheL2_bandwidth, :(@atleast 0)),
    (:processor_core_cacheL2_linesize, :(@atmost ∞)),
    (:processor_cacheL3_mapping, :(CacheMapping)),
    (:processor_cacheL3_size, :(@atleast 0)),
    (:processor_cacheL3_latency, :(@atmost ∞)),
    (:processor_cacheL3_bandwidth, :(@atleast 0)),
    (:processor_cacheL3_linesize, :(@atmost ∞)),
    (:processor, :(Processor{(@atleast 1),ProcessorManufacturer,ProcessorFamily{ProcessorManufacturer},ProcessorSeries{ProcessorManufacturer,ProcessorFamily{ProcessorManufacturer}},ProcessorMicroarchitecture{ProcessorManufacturer},ProcessorSIMDExt,ProcessorISA, (@atleast 0)})),
    (:accelerator_count, :(@atleast 0)),
    (:accelerator_manufacturer, :(AcceleratorManufacturer)),
    (:accelerator_type, :(AcceleratorType{AcceleratorManufacturer})),
    (:accelerator_architecture, :(AcceleratorArchitecture{AcceleratorManufacturer})),
    (:accelerator_api, :(AcceleratorBackend)),
    (:accelerator_globalmemorysize, :(@atleast 0)),
    (:accelerator_energyefficiency, :(@atleast 0)),
    (:accelerator, :(Accelerator{AcceleratorManufacturer,AcceleratorType{AcceleratorManufacturer},AcceleratorArchitecture{AcceleratorManufacturer},AcceleratorBackend, (@atleast 0), (@atleast 0)})),
    (:interconnection_starttime, :(@atmost ∞)),
    (:interconnection_latency, :(@atmost ∞)),
    (:interconnection_bandwidth, :(@atleast 0)),
    (:interconnection_topology, :(InterconnectionTopology)),
    (:interconnection_RDMA, :(Query)),
    (:interconnection, :(Interconnection{(@atmost ∞), (@atmost ∞), (@atleast 0),InterconnectionTopology, Query})),
    (:storage_size, :(@atleast 0)),
    (:storage_latency, :(@atmost ∞)),
    (:storage_bandwidth, :(@atleast 0)),
    (:storage_networkbandwidth, :(@atleast 0)),
    (:storage, :(Storage{(@atleast 0), (@atmost ∞), (@atleast 0), (@atleast 0)}))]

variables = Dict([
    (:node_count,:NC),
    (:node_maintainer,:M),
    (:node_machinefamily,:Mf),
    (:node_machinetype,:Mt),
    (:node_machinesize,:Ms),
    (:node_memory_size,:MZ),
    (:node_memory_latency,:ML),
    (:node_memory_bandwidth,:MB),
    (:node_memory_type,:MY),
    (:node_virtual,:V),
    (:node_dedicated,:D),
    (:processor_count,:PC),
    (:processor_manufacturer,:PU),
    (:processor_family,:PF),
    (:processor_series,:PR),
    (:processor_microarchitecture,:PA),
    (:processor_simd,:PS),
    (:processor_isa,:PI),
    (:processor_energyefficiency,:PE),
    (:processor_core_clock,:PCL),
    (:processor_core_count,:CC),
    (:processor_core_threads_count,:TC),
    (:processor_core_cacheL1_mapping,:PC1M),
    (:processor_core_cacheL1_size,:PC1S),
    (:processor_core_cacheL1_latency,:PC1T),
    (:processor_core_cacheL1_bandwidth,:PC1B),
    (:processor_core_cacheL1_linesize,:PC1L),
    (:processor_core_cacheL2_mapping,:PC2M),
    (:processor_core_cacheL2_size,:PC2S),
    (:processor_core_cacheL2_latency,:PC2T),
    (:processor_core_cacheL2_bandwidth,:PC2B),
    (:processor_core_cacheL2_linesize,:PC2L),
    (:processor_cacheL3_mapping,:PC3M),
    (:processor_cacheL3_size,:PC3S),
    (:processor_cacheL3_latency,:PC3T),
    (:processor_cacheL3_bandwidth,:PC3B),
    (:processor_cacheL3_linesize,:PC3L),
    (:processor,:P),
    (:accelerator_count,:AC),
    (:accelerator_manufacturer,:AU),
    (:accelerator_type,:AT),
    (:accelerator_architecture,:AA),
    (:accelerator_api,:API),
    (:accelerator_globalmemorysize,:AG),
    (:accelerator_energyefficiency,:AE),
    (:accelerator,:AM),
    (:interconnection_starttime,:IS),
    (:interconnection_latency,:IL),
    (:interconnection_bandwidth,:IB),
    (:interconnection_topology,:IT),
    (:interconnection_RDMA,:IR),
    (:interconnection,:I),
    (:storage_size,:SS),
    (:storage_latency,:SL),
    (:storage_bandwidth,:SB),
    (:storage_networkbandwidth,:SN),
    (:storage,:ST)])



platform_variables =
   [:(PC_<:(@atleast 1)),
    :(PU_<:ProcessorManufacturer),
    :(PF_<:ProcessorFamily{PU_}),
    :(PR_<:ProcessorSeries{PU_,PF_}),
    :(PA_<:ProcessorMicroarchitecture{PU_}),
    :(PI_<:ProcessorISA),
    :(PS_<:ProcessorSIMDExt),
    :(PE_<:(@atleast 0)),
    :(MZ_<:(@atleast 0)),
    :(ML_<:(@atmost ∞)),
    :(MB_<:(@atleast 0)),
    :(AU_<:AcceleratorManufacturer),
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
    :(PC<:Type{<:(@atleast 1)}),
    :(PU<:Type{<:ProcessorManufacturer}),
    :(PF<:Type{<:ProcessorFamily{PU_}}),
    :(PR<:Type{<:ProcessorSeries{PU_,PF_}}),
    :(PA<:Type{<:ProcessorMicroarchitecture{PU_}}),
    :(PI<:Type{<:ProcessorISA}),
    :(PS<:Type{<:ProcessorSIMDExt}),
    :(PCL<:Type{<:(@atleast 0)}),
    :(CC<:Type{<:(@atleast 1)}),
    :(TC<:Type{<:(@atleast 1)}),
    :(PE<:Type{<:(@atleast 0)}),
    :(PC1M<:Type{<:CacheMapping}),
    :(PC1S<:Type{<:(@atleast 0)}),
    :(PC1T<:Type{<:(@atmost ∞)}),
    :(PC1B<:Type{<:(@atleast 0)}),
    :(PC1L<:Type{<:(@atmost ∞)}),
    :(PC2M<:Type{<:CacheMapping}),
    :(PC2S<:Type{<:(@atleast 0)}),
    :(PC2T<:Type{<:(@atmost ∞)}),
    :(PC2B<:Type{<:(@atleast 0)}),
    :(PC2L<:Type{<:(@atmost ∞)}),
    :(PC3M<:Type{<:CacheMapping}),
    :(PC3S<:Type{<:(@atleast 0)}),
    :(PC3T<:Type{<:(@atmost ∞)}),
    :(PC3B<:Type{<:(@atleast 0)}),
    :(PC3L<:Type{<:(@atmost ∞)}),
    :(P<:Type{<:Processor{PC_,PU_,PF_,PR_,PA_,PS_,PI_,PE_}}),
    :(MZ<:Type{<:(@atleast 0)}),
    :(ML<:Type{<:(@atmost ∞)}),
    :(MB<:Type{<:(@atleast 0)}),
    :(MY<:Type{<:MemorySystem{MZ_,ML_,MB_}}),
    :(AC<:Type{<:(@atleast 0)}),
    :(AU<:Type{<:AcceleratorManufacturer}),
    :(AT<:Type{<:AcceleratorType{AU_}}),
    :(AA<:Type{<:AcceleratorArchitecture{AU_}}),
    :(API<:Type{<:AcceleratorBackend}),
    :(AG<:Type{<:(@atleast 0)}),
    :(AE<:Type{<:(@atleast 0)}),
    :(AM<:Type{<:Accelerator{AU_,AT_,AA_,API_,AG_,AE_}}),
    :(IS<:Type{<:(@atmost ∞)}),
    :(IL<:Type{<:(@atmost ∞)}),
    :(IB<:Type{<:(@atleast 0)}),
    :(IT<:Type{<:InterconnectionTopology}),
    :(IR<:Type{<:Query}),
    :(I<:Type{<:Interconnection{IS_,IL_,IB_,IT_,IR_}}),
    :(SS<:Type{<:(@atleast 0)}),
    :(SL<:Type{<:(@atmost ∞)}),
    :(SB<:Type{<:(@atleast 0)}),
    :(SN<:Type{<:(@atleast 0)}),
    :(ST<:Type{<:Storage{SS_,SL_,SB_,SN_}})]


platform_parameters = map(p->Expr(:kw,Expr(:(::),p[1],variables[p[1]]),p[2]), actual_platform_arguments)

function platform_parameters_kernel(ppars)
    p1 = map(x-> x.args[1], platform_parameters)
    p2 = Dict(); foreach(x->get!(p2, x.args[1], x.args[2]), ppars)
    p2_inv = Dict()
    platform_parameters_kernel = map(x-> (found = get(p2, x.args[1],nothing); if (isnothing(found)) x else get!(p2_inv, x.args[2], x.args[2]); :($(x.args[1])::$found) end), p1)
    platform_variables_kernel = filter(x-> (isnothing(get(p2_inv, if (typeof(x) == Symbol) x else x.args[1] end,nothing))), platform_variables)
    (platform_parameters_kernel, platform_variables_kernel)
end

macro platform(t,f)
    if (t == :entry)
        eval(build_entry_function(f))   
    else if (t == :kernel)
        eval(build_kernel_function(f))
    else
        println("usage: platform [entry | kernel] <function declaration>")
    end
 end

# build_entry_function

function build_entry_function(f::Expr)
    (fname, fargs, fsign) = build_entry_signature(f.args[1])
    fbody = build_entry_body(fname, fargs)
    Expr(:function, fsign, fbody)
end

function build_entry_signature(fsign::Expr)
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

function build_entry_body(fname, fargs)
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
    keyword_parameters_node = if (call_node_args[1].head == :parameters) popfirst!(call_node_args) else [] end
    aware_parameters_args = if (call_node_args[1].head == :braces) popfirst!(call_node_args).args else [] end
    (ppars, pvars) = platform_parameters_kernel(aware_parameters_args)
    new_call_node_args = [fun_name, keyword_parameters_node, call_node_args..., ppars...]
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