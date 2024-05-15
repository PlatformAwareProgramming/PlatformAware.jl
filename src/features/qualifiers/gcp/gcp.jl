# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

# maintaner types
abstract type GoogleCloud <: CloudProvider end; export GoogleCloud

# locale types 


# machine family types

abstract type GCPFamily <: MachineFamily end

abstract type GCPFamily_General <: GCPFamily end
abstract type GCPFamily_Compute <: GCPFamily end
abstract type GCPFamily_Memory <: GCPFamily end
abstract type GCPFamily_Accelerated <: GCPFamily end

# machine types

abstract type GCPType <: MachineType end

# general purpose machine types

abstract type GCPType_E2 <: GCPType end

abstract type GCPType_E2_Standard <: GCPType_E2 end
abstract type GCPType_E2_Highmem <: GCPType_E2 end
abstract type GCPType_E2_Highcpu <: GCPType_E2 end

abstract type GCPType_E2_Micro <: GCPType_E2 end
abstract type GCPType_E2_Small <: GCPType_E2 end
abstract type GCPType_E2_Medium <: GCPType_E2 end

abstract type GCPType_E2_Standard2 <: GCPType_E2_Standard end
abstract type GCPType_E2_Standard4 <: GCPType_E2_Standard end
abstract type GCPType_E2_Standard8 <: GCPType_E2_Standard end
abstract type GCPType_E2_Standard16 <: GCPType_E2_Standard end
abstract type GCPType_E2_Standard32 <: GCPType_E2_Standard end

abstract type GCPType_E2_Highmem2 <: GCPType_E2_Highmem end
abstract type GCPType_E2_Highmem4 <: GCPType_E2_Highmem end
abstract type GCPType_E2_Highmem8 <: GCPType_E2_Highmem end
abstract type GCPType_E2_Highmem16 <: GCPType_E2_Highmem end

abstract type GCPType_E2_Highcpu2 <: GCPType_E2_Highcpu end
abstract type GCPType_E2_Highcpu4 <: GCPType_E2_Highcpu end
abstract type GCPType_E2_Highcpu8 <: GCPType_E2_Highcpu end
abstract type GCPType_E2_Highcpu16 <: GCPType_E2_Highcpu end
abstract type GCPType_E2_Highcpu32 <: GCPType_E2_Highcpu end

abstract type GCPType_N2 <: GCPType end

abstract type GCPType_N2_Standard <: GCPType_N2 end
abstract type GCPType_N2_Highmem <: GCPType_N2 end
abstract type GCPType_N2_Highcpu <: GCPType_N2 end

abstract type GCPType_N2_Standard2 <: GCPType_N2_Standard end
abstract type GCPType_N2_Standard4 <: GCPType_N2_Standard end
abstract type GCPType_N2_Standard8 <: GCPType_N2_Standard end
abstract type GCPType_N2_Standard16 <: GCPType_N2_Standard end
abstract type GCPType_N2_Standard32 <: GCPType_N2_Standard end
abstract type GCPType_N2_Standard48 <: GCPType_N2_Standard end
abstract type GCPType_N2_Standard64 <: GCPType_N2_Standard end
abstract type GCPType_N2_Standard80 <: GCPType_N2_Standard end
abstract type GCPType_N2_Standard96 <: GCPType_N2_Standard end
abstract type GCPType_N2_Standard128 <: GCPType_N2_Standard end

abstract type GCPType_N2_Highmem2 <: GCPType_N2_Highmem end
abstract type GCPType_N2_Highmem4 <: GCPType_N2_Highmem end
abstract type GCPType_N2_Highmem8 <: GCPType_N2_Highmem end
abstract type GCPType_N2_Highmem16 <: GCPType_N2_Highmem end
abstract type GCPType_N2_Highmem32 <: GCPType_N2_Highmem end
abstract type GCPType_N2_Highmem48 <: GCPType_N2_Highmem end
abstract type GCPType_N2_Highmem64 <: GCPType_N2_Highmem end
abstract type GCPType_N2_Highmem80 <: GCPType_N2_Highmem end
abstract type GCPType_N2_Highmem96 <: GCPType_N2_Highmem end
abstract type GCPType_N2_Highmem128 <: GCPType_N2_Highmem end

abstract type GCPType_N2_Highcpu2 <: GCPType_N2_Highcpu end
abstract type GCPType_N2_Highcpu4 <: GCPType_N2_Highcpu end
abstract type GCPType_N2_Highcpu8 <: GCPType_N2_Highcpu end
abstract type GCPType_N2_Highcpu16 <: GCPType_N2_Highcpu end
abstract type GCPType_N2_Highcpu32 <: GCPType_N2_Highcpu end
abstract type GCPType_N2_Highcpu48 <: GCPType_N2_Highcpu end
abstract type GCPType_N2_Highcpu64 <: GCPType_N2_Highcpu end
abstract type GCPType_N2_Highcpu80 <: GCPType_N2_Highcpu end
abstract type GCPType_N2_Highcpu96 <: GCPType_N2_Highcpu end

abstract type GCPType_N2D <: GCPType end

abstract type GCPType_N2D_Standard <: GCPType_N2D end
abstract type GCPType_N2D_Highmem <: GCPType_N2D end
abstract type GCPType_N2D_Highcpu <: GCPType_N2D end

abstract type GCPType_N2D_Standard2 <: GCPType_N2D_Standard end
abstract type GCPType_N2D_Standard4 <: GCPType_N2D_Standard end
abstract type GCPType_N2D_Standard8 <: GCPType_N2D_Standard end
abstract type GCPType_N2D_Standard16 <: GCPType_N2D_Standard end
abstract type GCPType_N2D_Standard32 <: GCPType_N2D_Standard end
abstract type GCPType_N2D_Standard48 <: GCPType_N2D_Standard end
abstract type GCPType_N2D_Standard64 <: GCPType_N2D_Standard end
abstract type GCPType_N2D_Standard80 <: GCPType_N2D_Standard end
abstract type GCPType_N2D_Standard96 <: GCPType_N2D_Standard end
abstract type GCPType_N2D_Standard128 <: GCPType_N2D_Standard end
abstract type GCPType_N2D_Standard224 <: GCPType_N2D_Standard end

abstract type GCPType_N2D_Highmem2 <: GCPType_N2D_Highmem end
abstract type GCPType_N2D_Highmem4 <: GCPType_N2D_Highmem end
abstract type GCPType_N2D_Highmem8 <: GCPType_N2D_Highmem end
abstract type GCPType_N2D_Highmem16 <: GCPType_N2D_Highmem end
abstract type GCPType_N2D_Highmem32 <: GCPType_N2D_Highmem end
abstract type GCPType_N2D_Highmem48 <: GCPType_N2D_Highmem end
abstract type GCPType_N2D_Highmem64 <: GCPType_N2D_Highmem end
abstract type GCPType_N2D_Highmem80 <: GCPType_N2D_Highmem end
abstract type GCPType_N2D_Highmem96 <: GCPType_N2D_Highmem end

abstract type GCPType_N2D_Highcpu2 <: GCPType_N2D_Highcpu end
abstract type GCPType_N2D_Highcpu4 <: GCPType_N2D_Highcpu end
abstract type GCPType_N2D_Highcpu8 <: GCPType_N2D_Highcpu end
abstract type GCPType_N2D_Highcpu16 <: GCPType_N2D_Highcpu end
abstract type GCPType_N2D_Highcpu32 <: GCPType_N2D_Highcpu end
abstract type GCPType_N2D_Highcpu48 <: GCPType_N2D_Highcpu end
abstract type GCPType_N2D_Highcpu64 <: GCPType_N2D_Highcpu end
abstract type GCPType_N2D_Highcpu80 <: GCPType_N2D_Highcpu end
abstract type GCPType_N2D_Highcpu96 <: GCPType_N2D_Highcpu end
abstract type GCPType_N2D_Highcpu128 <: GCPType_N2D_Highcpu end
abstract type GCPType_N2D_Highcpu224 <: GCPType_N2D_Highcpu end

abstract type GCPType_T2D <: GCPType end

abstract type GCPType_T2D_Standard <: GCPType_T2D end

abstract type GCPType_T2D_Standard1 <: GCPType_T2D_Standard end
abstract type GCPType_T2D_Standard2 <: GCPType_T2D_Standard end
abstract type GCPType_T2D_Standard4 <: GCPType_T2D_Standard end
abstract type GCPType_T2D_Standard8 <: GCPType_T2D_Standard end
abstract type GCPType_T2D_Standard16 <: GCPType_T2D_Standard end
abstract type GCPType_T2D_Standard32 <: GCPType_T2D_Standard end
abstract type GCPType_T2D_Standard48 <: GCPType_T2D_Standard end
abstract type GCPType_T2D_Standard60 <: GCPType_T2D_Standard end

abstract type GCPType_T2A <: GCPType end

abstract type GCPType_T2A_Standard <: GCPType_T2A end

abstract type GCPType_T2A_Standard1 <: GCPType_T2A_Standard end
abstract type GCPType_T2A_Standard2 <: GCPType_T2A_Standard end
abstract type GCPType_T2A_Standard4 <: GCPType_T2A_Standard end
abstract type GCPType_T2A_Standard8 <: GCPType_T2A_Standard end
abstract type GCPType_T2A_Standard16 <: GCPType_T2A_Standard end
abstract type GCPType_T2A_Standard32 <: GCPType_T2A_Standard end
abstract type GCPType_T2A_Standard48 <: GCPType_T2A_Standard end

abstract type GCPType_N1 <: GCPType end

abstract type GCPType_N1_Standard <: GCPType_N1 end
abstract type GCPType_N1_Highmem <: GCPType_N1 end
abstract type GCPType_N1_Highcpu <: GCPType_N1 end

abstract type GCPType_F1_Micro <: GCPType_N1 end
abstract type GCPType_G1_Small <: GCPType_N1 end

abstract type GCPType_N1_Standard1 <: GCPType_N1_Standard end
abstract type GCPType_N1_Standard2 <: GCPType_N1_Standard end
abstract type GCPType_N1_Standard4 <: GCPType_N1_Standard end
abstract type GCPType_N1_Standard8 <: GCPType_N1_Standard end
abstract type GCPType_N1_Standard16 <: GCPType_N1_Standard end
abstract type GCPType_N1_Standard32 <: GCPType_N1_Standard end
abstract type GCPType_N1_Standard64 <: GCPType_N1_Standard end
abstract type GCPType_N1_Standard96 <: GCPType_N1_Standard end

abstract type GCPType_N1_Highmem2 <: GCPType_N1_Highmem end
abstract type GCPType_N1_Highmem4 <: GCPType_N1_Highmem end
abstract type GCPType_N1_Highmem8 <: GCPType_N1_Highmem end
abstract type GCPType_N1_Highmem16 <: GCPType_N1_Highmem end
abstract type GCPType_N1_Highmem32 <: GCPType_N1_Highmem end
abstract type GCPType_N1_Highmem64 <: GCPType_N1_Highmem end
abstract type GCPType_N1_Highmem96 <: GCPType_N1_Highmem end

abstract type GCPType_N1_Highcpu2 <: GCPType_N1_Highcpu end
abstract type GCPType_N1_Highcpu4 <: GCPType_N1_Highcpu end
abstract type GCPType_N1_Highcpu8 <: GCPType_N1_Highcpu end
abstract type GCPType_N1_Highcpu16 <: GCPType_N1_Highcpu end
abstract type GCPType_N1_Highcpu32 <: GCPType_N1_Highcpu end
abstract type GCPType_N1_Highcpu64 <: GCPType_N1_Highcpu end
abstract type GCPType_N1_Highcpu96 <: GCPType_N1_Highcpu end

# compute optimized machine types

abstract type GCPType_C2 <: GCPType end

abstract type GCPType_C2_Standard <: GCPType_C2 end

abstract type GCPType_C2_Standard4 <: GCPType_C2_Standard end
abstract type GCPType_C2_Standard8 <: GCPType_C2_Standard end
abstract type GCPType_C2_Standard16 <: GCPType_C2_Standard end
abstract type GCPType_C2_Standard30 <: GCPType_C2_Standard end
abstract type GCPType_C2_Standard60 <: GCPType_C2_Standard end

abstract type GCPType_C2D <: GCPType end

abstract type GCPType_C2D_Standard <: GCPType_C2D end
abstract type GCPType_C2D_Highmem <: GCPType_C2D end
abstract type GCPType_C2D_Highcpu <: GCPType_C2D end

abstract type GCPType_C2D_Standard2 <: GCPType_C2D_Standard end
abstract type GCPType_C2D_Standard4 <: GCPType_C2D_Standard end
abstract type GCPType_C2D_Standard8 <: GCPType_C2D_Standard end
abstract type GCPType_C2D_Standard16 <: GCPType_C2D_Standard end
abstract type GCPType_C2D_Standard32 <: GCPType_C2D_Standard end
abstract type GCPType_C2D_Standard56 <: GCPType_C2D_Standard end
abstract type GCPType_C2D_Standard112 <: GCPType_C2D_Standard end

abstract type GCPType_C2D_Highcpu2 <: GCPType_C2D_Highcpu end
abstract type GCPType_C2D_Highcpu4 <: GCPType_C2D_Highcpu end
abstract type GCPType_C2D_Highcpu8 <: GCPType_C2D_Highcpu end
abstract type GCPType_C2D_Highcpu16 <: GCPType_C2D_Highcpu end
abstract type GCPType_C2D_Highcpu32 <: GCPType_C2D_Highcpu end
abstract type GCPType_C2D_Highcpu56 <: GCPType_C2D_Highcpu end
abstract type GCPType_C2D_Highcpu112 <: GCPType_C2D_Highcpu end

abstract type GCPType_C2D_Highmem2 <: GCPType_C2D_Highmem end
abstract type GCPType_C2D_Highmem4 <: GCPType_C2D_Highmem end
abstract type GCPType_C2D_Highmem8 <: GCPType_C2D_Highmem end
abstract type GCPType_C2D_Highmem16 <: GCPType_C2D_Highmem end
abstract type GCPType_C2D_Highmem32 <: GCPType_C2D_Highmem end
abstract type GCPType_C2D_Highmem56 <: GCPType_C2D_Highmem end
abstract type GCPType_C2D_Highmem112 <: GCPType_C2D_Highmem end

# memory optimized machine types

abstract type GCPType_M1 <: GCPType end

abstract type GCPType_M1_Ultramem40 <: GCPType_M1 end
abstract type GCPType_M1_Ultramem80 <: GCPType_M1 end
abstract type GCPType_M1_Ultramem160 <: GCPType_M1 end
abstract type GCPType_M1_Megamem96 <: GCPType_M1 end

abstract type GCPType_M2 <: GCPType end

abstract type GCPType_M2_Ultramem208 <: GCPType_M2 end
abstract type GCPType_M2_Ultramem416 <: GCPType_M2 end
abstract type GCPType_M2_Megamem416 <: GCPType_M2 end
abstract type GCPType_M2_Hypermem416 <: GCPType_M2 end

abstract type GCPType_M3 <: GCPType end

abstract type GCPType_M3_Ultramem32 <: GCPType_M3 end
abstract type GCPType_M3_Ultramem64 <: GCPType_M3 end
abstract type GCPType_M3_Ultramem128 <: GCPType_M3 end
abstract type GCPType_M3_Megamem64 <: GCPType_M3 end
abstract type GCPType_M3_Megamem128 <: GCPType_M3 end

# accelerator optimized machine types

abstract type GCPType_A2 <: GCPType end
abstract type GCPType_G2 <: GCPType end

abstract type GCPType_A2_Highgpu1G <: GCPType_A2 end
abstract type GCPType_A2_Highgpu2G <: GCPType_A2 end
abstract type GCPType_A2_Highgpu4G <: GCPType_A2 end
abstract type GCPType_A2_Highgpu8G <: GCPType_A2 end
abstract type GCPType_A2_Megagpu16G <: GCPType_A2 end

abstract type GCPType_A2_Ultragpu1G <: GCPType_A2 end
abstract type GCPType_A2_Ultragpu2G <: GCPType_A2 end
abstract type GCPType_A2_Ultragpu4G <: GCPType_A2 end
abstract type GCPType_A2_Ultragpu8G <: GCPType_A2 end

abstract type GCPType_G2_Standard4 <: GCPType_G2 end
abstract type GCPType_G2_Standard8 <: GCPType_G2 end
abstract type GCPType_G2_Standard12 <: GCPType_G2 end
abstract type GCPType_G2_Standard16 <: GCPType_G2 end
abstract type GCPType_G2_Standard24 <: GCPType_G2 end
abstract type GCPType_G2_Standard32 <: GCPType_G2 end
abstract type GCPType_G2_Standard48 <: GCPType_G2 end
abstract type GCPType_G2_Standard96 <: GCPType_G2 end

# machine size types

function getNodeFeatures(provider::Type{<:GoogleCloud}, node_features)
	nothing
end

function getMachineType(provider::Type{<:GoogleCloud})

	machine_type_url = "http://metadata.google.internal/computeMetadata/v1/instance/machine-type"
	machine_type = 
		try
			return last(split(String(HTTP.request("GET", machine_type_url, ["Metadata-Flavor" => "Google"]).body), "/"))
		catch e
			return nothing
		end
end

function getDiskInfo(provider::Type{<:GoogleCloud})
	disk_info_url = "http://metadata.google.internal/computeMetadata/v1/instance/disks/?recursive=true"
	disk_info = 
		try
			return JSON.parse(String(HTTP.request("GET", disk_info_url, ["Metadata-Flavor" => "Google"]).body))
		catch e
			return nothing
		end
end


