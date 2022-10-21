# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------


# automated declaration of at-most quantifier types

abstract type AtMostInf  <: QuantifierFeature end; export AtMostInf                     

let mul_super = "Inf" ,
    mag_ = "" ;
    for mag in reverse(["n", "u", "m", "", "K", "M", "G", "T", "P", "E"])
        for mul in reverse([1, 2, 4, 8, 16, 32, 64, 128, 256, 512])
            mag_super = mul==512 ? mag_ : mag
            nm1 = Symbol("AtMost" * string(mul) * mag)
            nm2 = Symbol("AtMost" * string(mul_super) * mag_super)
            @eval abstract type $nm1 <: $nm2 end
            @eval export $nm1
            mul_super = mul
        end
        mag_ = mag
    end
end

abstract type AtMost0 <: AtMost1n end; export AtMost0




#=

abstract type AtMostInf end                             # ∞

abstract type AtMost512E <: AtMostInf end               # 2^69
abstract type AtMost256E <: AtMost512E end              # 2^68
abstract type AtMost128E <: AtMost256E end              # 2^67
abstract type AtMost64E <: AtMost128E end               # 2^66
abstract type AtMost32E <: AtMost64E end                # 2^65
abstract type AtMost16E <: AtMost32E end                # 2^64
abstract type AtMost8E <: AtMost16E end                 # 2^63
abstract type AtMost4E <: AtMost8E end                  # 2^62
abstract type AtMost2E <: AtMost4E end                  # 2^61
abstract type AtMost1E <: AtMost2E end                  # 2^60

abstract type AtMost512P <: AtMost1E end                # 2^59
abstract type AtMost256P <: AtMost512P end              # 2^58
abstract type AtMost128P <: AtMost256P end              # 2^57
abstract type AtMost64P <: AtMost128P end               # 2^56
abstract type AtMost32P <: AtMost64P end                # 2^55
abstract type AtMost16P <: AtMost32P end                # 2^54
abstract type AtMost8P <: AtMost16P end                 # 2^53
abstract type AtMost4P <: AtMost8P end                  # 2^52
abstract type AtMost2P <: AtMost4P end                  # 2^51
abstract type AtMost1P <: AtMost2P end                  # 2^50

abstract type AtMost512T <: AtMost1P end                # 2^49
abstract type AtMost256T <: AtMost512T end              # 2^48
abstract type AtMost128T <: AtMost256T end              # 2^47
abstract type AtMost64T <: AtMost128T end               # 2^46
abstract type AtMost32T <: AtMost64T end                # 2^45
abstract type AtMost16T <: AtMost32T end                # 2^44
abstract type AtMost8T <: AtMost16T end                 # 2^43
abstract type AtMost4T <: AtMost8T end                  # 2^42
abstract type AtMost2T <: AtMost4T end                  # 2^41
abstract type AtMost1T <: AtMost2T end                  # 2^40

abstract type AtMost512G <: AtMost1T end                # 2^39
abstract type AtMost256G <: AtMost512G end              # 2^38
abstract type AtMost128G <: AtMost256G end              # 2^37
abstract type AtMost64G <: AtMost128G end               # 2^36
abstract type AtMost32G <: AtMost64G end                # 2^35
abstract type AtMost16G <: AtMost32G end                # 2^34
abstract type AtMost8G <: AtMost16G end                 # 2^33
abstract type AtMost4G <: AtMost8G end                  # 2^32
abstract type AtMost2G <: AtMost4G end                  # 2^31   
abstract type AtMost1G <: AtMost2G end                  # 2^30

abstract type AtMost512M <: AtMost1G end                # 2^29
abstract type AtMost256M <: AtMost512M end              # 2^28
abstract type AtMost128M <: AtMost256M end              # 2^27
abstract type AtMost64M <: AtMost128M end               # 2^26
abstract type AtMost32M <: AtMost64M end                # 2^25
abstract type AtMost16M <: AtMost32M end                # 2^24
abstract type AtMost8M <: AtMost16M end                 # 2^23
abstract type AtMost4M <: AtMost8M end                  # 2^22
abstract type AtMost2M <: AtMost4M end                  # 2^21
abstract type AtMost1M <: AtMost2M end                  # 2^20

abstract type AtMost512K <: AtMost1M end                # 2^19
abstract type AtMost256K <: AtMost512K end              # 2^18
abstract type AtMost128K <: AtMost256K end              # 2^17
abstract type AtMost64K <: AtMost128K end               # 2^16
abstract type AtMost32K <: AtMost64K end                # 2^15
abstract type AtMost16K <: AtMost32K end                # 2^14
abstract type AtMost8K <: AtMost16K end                 # 2^13
abstract type AtMost4K <: AtMost8K end                  # 2^12
abstract type AtMost2K <: AtMost4K end                  # 2^11
abstract type AtMost1K <: AtMost2K end                  # 2^10

abstract type AtMost512 <: AtMost1K end                 # 2^9
abstract type AtMost256 <: AtMost512 end                # 2^8 
abstract type AtMost128 <: AtMost256 end                # 2^7 
abstract type AtMost64 <: AtMost128 end                 # 2^6
abstract type AtMost32 <: AtMost64 end                  # 2^5
abstract type AtMost16 <: AtMost32 end                  # 2^4
abstract type AtMost8 <: AtMost16 end                   # 2^3
abstract type AtMost4 <: AtMost8 end                    # 2^2
abstract type AtMost2 <: AtMost4 end                    # 2^1
abstract type AtMost1 <: AtMost2 end                    # 2^0

abstract type AtMost512m <: AtMost1 end                 # 2^-1
abstract type AtMost256m <: AtMost512m end              # 2^-2
abstract type AtMost128m <: AtMost256m end              # 2^-3
abstract type AtMost64m <: AtMost128m end               # 2^-4
abstract type AtMost32m <: AtMost64m end                # 2^-5
abstract type AtMost16m <: AtMost32m end                # 2^-6
abstract type AtMost8m <: AtMost16m end                 # 2^-7
abstract type AtMost4m <: AtMost8m end                  # 2^-8
abstract type AtMost2m <: AtMost4m end                  # 2^-9
abstract type AtMost1m <: AtMost2m end                  # 2^-10

abstract type AtMost512u <: AtMost1m end                # 2^-11
abstract type AtMost256u <: AtMost512u end              # 2^-12
abstract type AtMost128u <: AtMost256u end              # 2^-13
abstract type AtMost64u <: AtMost128u end               # 2^-14
abstract type AtMost32u <: AtMost64u end                # 2^-15
abstract type AtMost16u <: AtMost32u end                # 2^-16
abstract type AtMost8u <: AtMost16u end                 # 2^-17
abstract type AtMost4u <: AtMost8u end                  # 2^-18
abstract type AtMost2u <: AtMost4u end                  # 2^-19
abstract type AtMost1u <: AtMost2u end                  # 2^-20

abstract type AtMost512n <: AtMost1u end                # 2^-21
abstract type AtMost256n <: AtMost512n end              # 2^-22
abstract type AtMost128n <: AtMost256n end              # 2^-23
abstract type AtMost64n <: AtMost128n end               # 2^-24
abstract type AtMost32n <: AtMost64n end                # 2^-25
abstract type AtMost16n <: AtMost32n end                # 2^-26
abstract type AtMost8n <: AtMost16n end                 # 2^-27
abstract type AtMost4n <: AtMost8n end                  # 2^-28
abstract type AtMost2n <: AtMost4n end                  # 2^-29
abstract type AtMost1n <: AtMost2n end                  # 2^-30

abstract type AtMost0 <: AtMost1n end                   # 0

=#


