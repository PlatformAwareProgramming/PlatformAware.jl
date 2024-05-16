# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

abstract type PlatformType end

abstract type QuantifierFeature <: PlatformType end
abstract type QualifierFeature <: PlatformType end

@enum FeatureType qualifier=1 api_qualifier quantifier

export FeatureType

global feature_type = Dict(
    :node_count => quantifier,
    :node_threads_count => quantifier,
    :node_provider => qualifier,
    :node_virtual => qualifier,
    :node_dedicated => qualifier,
    :node_machinefamily => qualifier,
    :node_machinetype => qualifier,
    :node_vcpus_count => quantifier,
    :node_memory_size => quantifier,
    :node_memory_latency => quantifier,
    :node_memory_bandwidth => quantifier,
    :node_memory_type => qualifier,
    :node_memory_frequency => quantifier,
    :node_coworker_count => qualifier,
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
    :accelerator_interconnect => qualifier,
    :accelerator_type => qualifier,
    :accelerator_architecture => qualifier,
    :accelerator_api => api_qualifier,
    :accelerator_memory_size => quantifier,
    :accelerator_tdp => quantifier,
    :accelerator_processor => qualifier,
    :accelerator_processor_count => quantifier,
    :accelerator_memory_type => qualifier,
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
    
    @info "reading platform description at $filename"

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
                @info "The platform description file (Platform.toml) was not found."
                @info "Using default platform features (calling default kernels)."
                @info "A Platform.toml file may be created by calling PlatformAware.setup()"

                dpf_path = @get_scratch!("default_platform_path")
                dpf_url = "https://raw.githubusercontent.com/PlatformAwareProgramming/PlatformAware.jl/master/src/features/default/Platform.toml"
                dpf_fname =  joinpath(dpf_path, basename(dpf_url))
                try_download(dpf_url, dpf_fname)

                read(dpf_fname,String)
            end
         end
    
        TOML.parse(platform_description_toml)    
end

get_quantifier_from_number(n) = get_quantifier_from_number(n,'.')
    
function get_quantifier_from_number(n, d)

    if n>0
        magnitude = Dict(0 => "", 1 => "K", 2 => "M", 3 => "G", 4 => "T", 5 => "P", 6 => "E")

        l = log(2,n)
        a = floor(l)
        b = isinteger(l) ? a : a + 1;    

        # the following loop separates a and b in multiplier*magnitude.

        if d == '<'
            a_str = "AtLeast0"
        else
            # let A = 2^a
            m1=0
            while a>9 
                # loop invariant: A = 2^a * 2^(10*m)
                a = a - 10
                m1 = m1 + 1
            end
            a_str = "AtLeast" * string(Integer(2^a)) * magnitude[m1]
        end

        if d == '>'
            b_str = "AtMostInf"
        else
            m2=0
            while b>9 
                # loop invariant: A = 2^a * 2^(10*m)
                b = b - 10
                m2 = m2 + 1
            end
            b_str = "AtMost" * string(Integer(2^b)) * magnitude[m2]
        end
    else
        a_str = "AtLeast0"
        b_str = "AtMost0"
    end

    a_type = getfield(@__MODULE__, Meta.parse(a_str))
    b_type = getfield(@__MODULE__, Meta.parse(b_str))
    Tuple{a_type,b_type,n}
end

mag_mult = Dict('K' => 2^10, 'M' => 2^20, 'G' => 2^30, 'T' => 2^40, 'P'=> 2^50, 'E' => 2^60)

function get_quantifier_from_string(nn)
   
    d = nn[1]
    if d in ['<','>']
        n = nn[2:length(nn)] 
    else
        n = nn
    end    

    m = n[length(n)] 
    v1 = get(mag_mult,m,1)
    v0 = v1 == 1 ? parse(Float64,n) : parse(Float64,n[1:length(n)-1])

    get_quantifier_from_number(v0*v1, d)
end

function get_quantifier(feature)
    if (typeof(feature) <: Number)
        get_quantifier_from_number(feature)
    else #if (typeof(feature) == String)
        get_quantifier_from_string(feature)
    end
end

function get_qualifier(feature)
    getfield(@__MODULE__, Meta.parse(feature))
end

function check_blank_feature(parameter_id, feature, platform_feature_default)
    if (feature == "na")
        platform_feature_default[parameter_id]
    elseif (feature == "unset")
        platform_feature_default[parameter_id]
    elseif (feature == "unknown")
        platform_feature_default[parameter_id]
    elseif (feature == "ignore")
        platform_feature_default[parameter_id]
    else
        nothing
    end
end

function identifyAPI_oldversion(api_string)

    dt = AcceleratorBackend

    api_type = get_qualifier(api_string)
    
    if (startswith(api_string, "CUDA"))        return Tuple{api_type,dt,dt,dt,dt,dt,dt}
    elseif (startswith(api_string, "OpenCL"))  return Tuple{dt,api_type,dt,dt,dt,dt,dt}
    elseif (startswith(api_string, "OpenACC")) return Tuple{dt,dt,api_type,dt,dt,dt,dt}
    elseif (startswith(api_string, "OneAPI"))  return Tuple{dt,dt,dt,api_type,dt,dt,dt}
    elseif (startswith(api_string, "OpenGL"))  return Tuple{dt,dt,dt,dt,api_type,dt,dt}
    elseif (startswith(api_string, "Vulkan"))  return Tuple{dt,dt,dt,dt,dt,api_type,dt}
    elseif (startswith(api_string, "DirectX")) return Tuple{dt,dt,dt,dt,dt,dt,api_type}
    else return Tuple{dt,dt,dt,dt,dt,dt}
    end

 end

function get_api_qualifier(api_string)

    apis = split(api_string,';')
 
    if length(apis) == 1
       return identifyAPI_oldversion(api_string)
    end
 
    cuda_api = get_qualifier(apis[1] in ["na","unset","unknown","ignore"] ? "AcceleratorBackend" : apis[1])
    opencl_api = get_qualifier(apis[2] in ["na","unset","unknown","ignore"] ? "AcceleratorBackend" : apis[2])
    openacc_api = get_qualifier(apis[3] in ["na","unset","unknown","ignore"] ? "AcceleratorBackend" : apis[3])
    oneapi_api = get_qualifier(apis[4] in ["na","unset","unknown","ignore"] ? "AcceleratorBackend" : apis[4])
    opengl_api = get_qualifier(apis[5] in ["na","unset","unknown","ignore"] ? "AcceleratorBackend" : apis[5])
    vulkan_api = get_qualifier(apis[6] in ["na","unset","unknown","ignore"] ? "AcceleratorBackend" : apis[6])
    directx_api = get_qualifier(apis[7] in ["na","unset","unknown","ignore"] ? "AcceleratorBackend" : apis[7])
 
    Tuple{cuda_api,opencl_api,openacc_api,oneapi_api,opengl_api,vulkan_api,directx_api}
 
 end

function loadFeaturesSection!(dict, platform_feature, platform_feature_default)

    if ("1" in keys(dict))
        dict = dict["1"]
    end

    for (parameter_id, feature) in dict
        p = Meta.parse(parameter_id)        
        platform_feature[p]= getFeature(p, feature, platform_feature_default, feature_type)
    end
end

function getFeature(p, feature, platform_feature_default, feature_type)
    try
        return getfield(@__MODULE__, Meta.parse(feature))
    catch(_)
    end

    v0 = check_blank_feature(p, feature, platform_feature_default)
    return if isnothing(v0)
              feature_type[p] == qualifier ? get_qualifier(feature) : feature_type[p] == api_qualifier ? get_api_qualifier(feature) : get_quantifier(feature) 
           else
              v0
           end
end

function loadFeatures!(dict, platform_feature_default, platform_feature)
    loadDBs!()
    for key in ["node", "processor", "accelerator", "memory", "storage", "interconnection"]
        loadFeaturesSection!(dict[key], platform_feature, platform_feature_default) 
    end
end