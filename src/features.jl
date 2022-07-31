# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

@enum FeatureType qualifier=1 quantifier

global feature_type = Dict(
    :node_count => quantifier,
    :node_provider => qualifier,
    :node_virtual => qualifier,
    :node_dedicated => qualifier,
    :node_machinefamily => qualifier,
    :node_machinetype => qualifier,
    :node_machinesize => qualifier,
    :node_vcpus_count => quantifier,
    :node_memory_size => quantifier,
    :node_memory_latency => quantifier,
    :node_memory_bandwidth => quantifier,
    :node_memory_type => qualifier,
    :node_memory_frequency => quantifier,
    :processor_count => quantifier,
    :processor_manufacturer => qualifier,
    :processor_microarchitecture => qualifier,
    :processor_simd => qualifier,
    :processor_isa => qualifier,
    :processor_tdp => quantifier,
    :processor_core_clock => quantifier,
    :processor_core_count => quantifier,
    :processor_core_threads_count => quantifier,
#    :processor_core_L1_mapping => ,
    :processor_core_L1_size => quantifier,
#    :processor_core_L1_latency => ,
#    :processor_core_L1_bandwidth => ,
#    :processor_core_L1_linesize => ,
#    :processor_core_L2_mapping => ,
    :processor_core_L2_size => quantifier,
#    :processor_core_L2_latency => ,
#    :processor_core_L2_bandwidth => ,
#    :processor_core_L2_linesize => ,
#    :processor_L3_mapping => ,
    :processor_L3_size => quantifier,
#    :processor_L3_latency => ,
#    :processor_L3_bandwidth => ,
#    :processor_L3_linesize => ,
    :processor => qualifier,
    :accelerator_count => quantifier,
    :accelerator_manufacturer => qualifier,
    :accelerator_type => qualifier,
    :accelerator_architecture => qualifier,
    :accelerator_api => qualifier,
    :accelerator_memorysize => quantifier,
    :accelerator_tdp => quantifier,
    :accelerator => qualifier,
    :interconnection_startuptime => quantifier,
    :interconnection_latency => quantifier,   
    :interconnection_bandwidth => quantifier,
    :interconnection_topology => qualifier,
    :interconnection_RDMA => qualifier,
    :interconnection => qualifier,
    :storage_size => quantifier,
    :storage_latency => quantifier,
    :storage_bandwidth => quantifier,
    :storage_networkbandwidth => quantifier,
    :storage_type => qualifier,
    :storage_interface => qualifier 
)

function readPlatormDescription()

    # read the platform description file (default to the current directory)
    filename = get(ENV,"PLATFORM_DESCRIPTION","Platform.toml")
    
    println("reading platform description at " * filename);

    platform_description_toml =   
         try
            io = open(filename)
            read(io,String)
         catch
            default_location = "/etc/Platform.toml"
            try
                # defaul system location
                io = open(default_location)
                contents = read(io,String)
                close(io)
                contents
            catch
                println(stderr,"The platform description file (Platform.toml) was not found.")
                println(stderr,"Using default platform features (calling default kernels).")
                println(stderr,"A Platform.toml file may be created by calling PlatformAware.setup()")

                io = joinpath(artifact"default_platform_description", "DefaultPlatform.toml")                
                read(io,String)
            end
         end
    
        TOML.parse(platform_description_toml)    
end

function get_quantifier_from_number(n)

    magnitude = Dict(0 => "", 1 => "K", 2 => "M", 3 => "G", 4 => "T", 5 => "P", 6 => "E")

    l = log(2,n)
    a = round(l)
    b = isinteger(l) ? a : a + 1;    

    # the following loop separates a and b in multiplier*magnitude (see the POPL's paper).

    # let A = 2^a
    m=0
    while a>9 
        # loop invariant: A = 2^a * 2^(10*m)
        a = a - 10
        b = b - 10
        m = m + 1
    end

    a_str = "AtLeast" * string(Integer(2^a)) * magnitude[m]
    b_str = "AtMost" * string(Integer(2^b)) * magnitude[m]

    a_type = getfield(@__MODULE__, Meta.parse(a_str))
    b_type = getfield(@__MODULE__, Meta.parse(b_str))
    Tuple{a_type,b_type}
end


function get_quantifier_from_string(n)
   
    mag_mult = Dict('K' => 2^10, 'M' => 2^20, 'G' => 2^30, 'T' => 2^40, 'P'=> 2^50, 'E' => 2^60)

    m = n[length(n)] 
    v1 = get(mag_mult,m,1)
    v0 = v1 == 1 ? parse(Float64,n) : parse(Float64,n[1:length(n)-1])

    get_quantifier_from_number(v0*v1)
end

function get_quantifier(feature)
    if (typeof(feature) <: Number)
        get_quantifier_from_number(feature)
    elseif (typeof(feature) == String)
        get_quantifier_from_string(feature)
    end
end

function get_qualifier(feature)
    getfield(@__MODULE__, Meta.parse(feature))
end

function check_blank_feature(parameter_id, feature, default_platform_types)
    if (feature == "na")
        default_platform_types[parameter_id]
    elseif (feature == "unset")
        default_platform_types[parameter_id]
    elseif (feature == "unknown")
        default_platform_types[parameter_id]
    elseif (feature == "ignore")
        default_platform_types[parameter_id]
    else
        nothing
    end
end


function loadFeaturesSection!(dict, actual_platform_arguments, default_platform_types)

    if ("0" in keys(dict))
        dict = dict["0"]
    end

    for (parameter_id, feature) in dict
        p = Meta.parse(parameter_id)
        v0 = check_blank_feature(p, feature, default_platform_types)
        v = if (isnothing(v0))
                feature_type[p] == qualifier ? get_qualifier(feature) : get_quantifier(feature) 
            else
                v0
            end
        actual_platform_arguments[p]= v
    end
end

function loadFeatures!(dict, default_platform_types, actual_platform_arguments)
    for key in ["node","processor","accelerator","memory","storage","interconnection"]
        loadFeaturesSection!(dict[key], actual_platform_arguments, default_platform_types) 
    end
end
