# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

abstract type Xilinx <: Manufacturer end
abstract type UltrascalePlus_HBM_FPGA <: AcceleratorType{Xilinx} end