abstract type AWS <: Manufacturer end; export AWS

abstract type AWSProcessor <: Processor end; export AWSProcessor

abstract type AWSMicroarchitecture <: ProcessorMicroarchitecture end
abstract type AWSGravitonMicroarchitecture <: AWSMicroarchitecture end

abstract type AWSGraviton1 <: AWSProcessor end; export AWSGraviton1
abstract type AWSGraviton2 <: AWSProcessor end; export AWSGraviton2
abstract type AWSGraviton3 <: AWSProcessor end; export AWSGraviton3
abstract type AWSGraviton4 <: AWSProcessor end; export AWSGraviton4