# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

# automated declaration of at-least quantifier types

abstract type AtLeast0 <: QuantifierFeature end                     

let mul_super = 0
    mag_ = ""
    for mag in ["n", "u", "m", "", "K", "M", "G", "T", "P", "E"]
        for mul in [1, 2, 4, 8, 16, 32, 64, 128, 256, 512]
            mag_super = mul == 1 ? mag_ : mag   
            nm1 = Symbol("AtLeast" * string(mul) * mag)
            nm2 = Symbol("AtLeast" * string(mul_super) * mag_super)
            @eval abstract type $nm1 <: $nm2 end
            @eval export $nm1
            mul_super = mul
        end
        mag_ = mag
    end
end

abstract type AtLeastInf <: AtLeast512E end



#=

abstract type AtLeast0 end                     # 0

abstract type AtLeast1n <: AtLeast0 end        # 2^-30
abstract type AtLeast2n <: AtLeast1n end       # 2^-29
abstract type AtLeast4n <: AtLeast2n end       # 2^-28
abstract type AtLeast8n <: AtLeast4n end       # 2^-27
abstract type AtLeast16n <: AtLeast8n end      # 2^-26
abstract type AtLeast32n <: AtLeast16n end     # 2^-25
abstract type AtLeast64n <: AtLeast32n end     # 2^-24
abstract type AtLeast128n <: AtLeast64n end    # 2^-23
abstract type AtLeast256n <: AtLeast128n end   # 2^-22
abstract type AtLeast512n <: AtLeast256n end   # 2^-21

abstract type AtLeast1u <: AtLeast512n end     # 2^-20
abstract type AtLeast2u <: AtLeast1u end       # 2^-19
abstract type AtLeast4u <: AtLeast2u end       # 2^-18
abstract type AtLeast8u <: AtLeast4u end       # 2^-17
abstract type AtLeast16u <: AtLeast8u end      # 2^-16
abstract type AtLeast32u <: AtLeast16u end     # 2^-15
abstract type AtLeast64u <: AtLeast32u end     # 2^-14
abstract type AtLeast128u <: AtLeast64u end    # 2^-13
abstract type AtLeast256u <: AtLeast128u end   # 2^-12
abstract type AtLeast512u <: AtLeast256u end   # 2^-11

abstract type AtLeast1m <: AtLeast512u end     # 2^-10
abstract type AtLeast2m <: AtLeast1m end       # 2^-9
abstract type AtLeast4m <: AtLeast2m end       # 2^-8
abstract type AtLeast8m <: AtLeast4m end       # 2^-7
abstract type AtLeast16m <: AtLeast8m end      # 2^-6
abstract type AtLeast32m <: AtLeast16m end     # 2^-5
abstract type AtLeast64m <: AtLeast32m end     # 2^-4
abstract type AtLeast128m <: AtLeast64m end    # 2^-3
abstract type AtLeast256m <: AtLeast128m end   # 2^-2
abstract type AtLeast512m <: AtLeast256m end   # 2^-1

abstract type AtLeast1 <: AtLeast512m end      # 2^0
abstract type AtLeast2 <: AtLeast1 end         # 2^1
abstract type AtLeast4 <: AtLeast2 end         # 2^2
abstract type AtLeast8 <: AtLeast4 end         # 2^3
abstract type AtLeast16 <: AtLeast8 end        # 2^4
abstract type AtLeast32 <: AtLeast16 end       # 2^5
abstract type AtLeast64 <: AtLeast32 end       # 2^6
abstract type AtLeast128 <: AtLeast64 end      # 2^7 
abstract type AtLeast256 <: AtLeast128 end     # 2^8 
abstract type AtLeast512 <: AtLeast256 end     # 2^9

abstract type AtLeast1K <: AtLeast512 end      # 2^10
abstract type AtLeast2K <: AtLeast1K end       # 2^11
abstract type AtLeast4K <: AtLeast2K end       # 2^12
abstract type AtLeast8K <: AtLeast4K end       # 2^13
abstract type AtLeast16K <: AtLeast8K end      # 2^14
abstract type AtLeast32K <: AtLeast16K end     # 2^15
abstract type AtLeast64K <: AtLeast32K end     # 2^16
abstract type AtLeast128K <: AtLeast64K end    # 2^17
abstract type AtLeast256K <: AtLeast128K end   # 2^18
abstract type AtLeast512K <: AtLeast256K end   # 2^19

abstract type AtLeast1M <: AtLeast512K end     # 2^20
abstract type AtLeast2M <: AtLeast1M end       # 2^21
abstract type AtLeast4M <: AtLeast2M end       # 2^22
abstract type AtLeast8M <: AtLeast4M end       # 2^23
abstract type AtLeast16M <: AtLeast8M end      # 2^24
abstract type AtLeast32M <: AtLeast16M end     # 2^25
abstract type AtLeast64M <: AtLeast32M end     # 2^26
abstract type AtLeast128M <: AtLeast64M end    # 2^27
abstract type AtLeast256M <: AtLeast128M end   # 2^28
abstract type AtLeast512M <: AtLeast256M end   # 2^29

abstract type AtLeast1G <: AtLeast512M end     # 2^30
abstract type AtLeast2G <: AtLeast1G end       # 2^31
abstract type AtLeast4G <: AtLeast2G end       # 2^32
abstract type AtLeast8G <: AtLeast4G end       # 2^33
abstract type AtLeast16G <: AtLeast8G end      # 2^34
abstract type AtLeast32G <: AtLeast16G end     # 2^35
abstract type AtLeast64G <: AtLeast32G end     # 2^36
abstract type AtLeast128G <: AtLeast64G end    # 2^37
abstract type AtLeast256G <: AtLeast128G end   # 2^38
abstract type AtLeast512G <: AtLeast256G end   # 2^39

abstract type AtLeast1T <: AtLeast512G end     # 2^40
abstract type AtLeast2T <: AtLeast1T end       # 2^41
abstract type AtLeast4T <: AtLeast2T end       # 2^42
abstract type AtLeast8T <: AtLeast4T end       # 2^43
abstract type AtLeast16T <: AtLeast8T end      # 2^44
abstract type AtLeast32T <: AtLeast16T end     # 2^45
abstract type AtLeast64T <: AtLeast32T end     # 2^46
abstract type AtLeast128T <: AtLeast64T end    # 2^47
abstract type AtLeast256T <: AtLeast128T end   # 2^48
abstract type AtLeast512T <: AtLeast256T end   # 2^49

abstract type AtLeast1P <: AtLeast512T end     # 2^50
abstract type AtLeast2P <: AtLeast1P end       # 2^51
abstract type AtLeast4P <: AtLeast2P end       # 2^52
abstract type AtLeast8P <: AtLeast4P end       # 2^53
abstract type AtLeast16P <: AtLeast8P end      # 2^54
abstract type AtLeast32P <: AtLeast16P end     # 2^55
abstract type AtLeast64P <: AtLeast32P end     # 2^56
abstract type AtLeast128P <: AtLeast64P end    # 2^57
abstract type AtLeast256P <: AtLeast128P end   # 2^58
abstract type AtLeast512P <: AtLeast256P end   # 2^59

abstract type AtLeast1E <: AtLeast512T end     # 2^60
abstract type AtLeast2E <: AtLeast1E end       # 2^61
abstract type AtLeast4E <: AtLeast2E end       # 2^62
abstract type AtLeast8E <: AtLeast4E end       # 2^63
abstract type AtLeast16E <: AtLeast8E end      # 2^64
abstract type AtLeast32E <: AtLeast16E end     # 2^65
abstract type AtLeast64E <: AtLeast32E end     # 2^66
abstract type AtLeast128E <: AtLeast64E end    # 2^67
abstract type AtLeast256E <: AtLeast128E end   # 2^68
abstract type AtLeast512E <: AtLeast256E end   # 2^69

# ...

abstract type AtLeastInf <: AtLeast512E end    # ∞

=#