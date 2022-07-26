# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

abstract type IntelXeonPhi <: IntelAccelerator end

abstract type IntelXeonPhi_72x5 <: IntelXeonPhi end
abstract type IntelXeonPhi_x100 <: IntelXeonPhi end
abstract type IntelXeonPhi_x200 <: IntelXeonPhi end

export IntelXeonPhi,
       IntelXeonPhi_72x5,
       IntelXeonPhi_x100,
       IntelXeonPhi_x200

abstract type IntelXeonPhi_7120A <: IntelXeonPhi_x100 end; export IntelXeonPhi_7120A
abstract type IntelXeonPhi_7120D <: IntelXeonPhi_x100 end; export IntelXeonPhi_7120D
abstract type IntelXeonPhi_3120A <: IntelXeonPhi_x100 end; export IntelXeonPhi_3120A
abstract type IntelXeonPhi_3120P <: IntelXeonPhi_x100 end; export IntelXeonPhi_3120P
abstract type IntelXeonPhi_5120D <: IntelXeonPhi_x100 end; export IntelXeonPhi_5120D
abstract type IntelXeonPhi_7120P <: IntelXeonPhi_x100 end; export IntelXeonPhi_7120P
abstract type IntelXeonPhi_7120X <: IntelXeonPhi_x100 end; export IntelXeonPhi_7120X
abstract type IntelXeonPhi_5110P <: IntelXeonPhi_x100 end; export IntelXeonPhi_5110P
abstract type IntelXeonPhi_7210 <: IntelXeonPhi_x200 end; export IntelXeonPhi_7210
abstract type IntelXeonPhi_7210F <: IntelXeonPhi_x200 end; export IntelXeonPhi_7210F
abstract type IntelXeonPhi_7230 <: IntelXeonPhi_x200 end; export IntelXeonPhi_7230
abstract type IntelXeonPhi_7230F <: IntelXeonPhi_x200 end; export IntelXeonPhi_7230F
abstract type IntelXeonPhi_7250 <: IntelXeonPhi_x200 end; export IntelXeonPhi_7250
abstract type IntelXeonPhi_7250F <: IntelXeonPhi_x200 end; export IntelXeonPhi_7250F
abstract type IntelXeonPhi_7290 <: IntelXeonPhi_x200 end; export IntelXeonPhi_7290
abstract type IntelXeonPhi_7290F <: IntelXeonPhi_x200 end; export IntelXeonPhi_7290F
abstract type IntelXeonPhi_7235 <: IntelXeonPhi_75x5 end; export IntelXeonPhi_7235
abstract type IntelXeonPhi_7285 <: IntelXeonPhi_75x5 end; export IntelXeonPhi_7285
abstract type IntelXeonPhi_7295 <: IntelXeonPhi_75x5 end; export IntelXeonPhi_7295
        
