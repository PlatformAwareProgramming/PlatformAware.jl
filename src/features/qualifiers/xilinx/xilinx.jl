# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

abstract type Xilinx <: Manufacturer end; export Xilinx

abstract type UltrascalePlus_HBM_FPGA <: AcceleratorType end; export UltrascalePlus_HBM_FPGA
abstract type UltrascalePlus_VU9P <: AcceleratorType end; export UltrascalePlus_VU9P

#TODO 