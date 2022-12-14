# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

# maintaner types
abstract type GoogleCloud <: CloudProvider end; export GoogleCloud

# locale types 


# machine family types


# machine type types


# machine size types

function getMachineType(provider::Type{<:GoogleCloud})

	machine_type_url = "http://metadata.google.internal/computeMetadata/v1/instance/machine-type"
	machine_type = 
		try
			return String(HTTP.request("GET", machine_type_url, ["Metadata-Flavor" => "Google"]))
		catch e
			return nothing
		end
end

function getDiskInfo(provider::Type{<:GoogleCloud})
	disk_info_url = "http://metadata.google.internal/computeMetadata/v1/instance/disks/?recursive=true"
	disk_info = 
		try
			return String(HTTP.request("GET", disk_info_url, ["Metadata-Flavor" => "Google"]))
		catch e
			return nothing
		end
end


