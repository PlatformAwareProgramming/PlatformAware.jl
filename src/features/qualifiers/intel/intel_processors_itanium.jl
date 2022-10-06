# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

## Itanium processors

abstract type IntelItanium <: IntelProcessor end

abstract type IntelItanium_9700 <: IntelItanium end
abstract type IntelItanium_9500 <: IntelItanium end
abstract type IntelItanium_9300 <: IntelItanium end
abstract type IntelItanium_9100 <: IntelItanium end
abstract type IntelItanium_9000 <: IntelItanium end
abstract type IntelItanium_FSB <: IntelItanium end
abstract type IntelItanium_FSB_400 <: IntelItanium_FSB end
abstract type IntelItanium_FSB_533 <: IntelItanium_FSB end
abstract type IntelItanium_FSB_677 <: IntelItanium_FSB end

export IntelItanium,
       IntelItanium_9000,
       IntelItanium_9100,
       IntelItanium_9300,
       IntelItanium_9500,
       IntelItanium_9700,
       IntelItanium_FSB,
       IntelItanium_FSB_400,
       IntelItanium_FSB_533,
       IntelItanium_FSB_677


# Itanium processor models

abstract type IntelItanium_9720 <: IntelItanium_9700 end; export IntelItanium_9720
abstract type IntelItanium_9740 <: IntelItanium_9700 end; export IntelItanium_9740
abstract type IntelItanium_9750 <: IntelItanium_9700 end; export IntelItanium_9750
abstract type IntelItanium_9760 <: IntelItanium_9700 end; export IntelItanium_9760
abstract type IntelItanium_9520 <: IntelItanium_9500 end; export IntelItanium_9520
abstract type IntelItanium_9540 <: IntelItanium_9500 end; export IntelItanium_9540
abstract type IntelItanium_9550 <: IntelItanium_9500 end; export IntelItanium_9550
abstract type IntelItanium_9560 <: IntelItanium_9500 end; export IntelItanium_9560
abstract type IntelItanium_9310 <: IntelItanium_9300 end; export IntelItanium_9310
abstract type IntelItanium_9320 <: IntelItanium_9300 end; export IntelItanium_9320
abstract type IntelItanium_9330 <: IntelItanium_9300 end; export IntelItanium_9330
abstract type IntelItanium_9340 <: IntelItanium_9300 end; export IntelItanium_9340
abstract type IntelItanium_9350 <: IntelItanium_9300 end; export IntelItanium_9350
abstract type IntelItanium_9110N <: IntelItanium_9100 end; export IntelItanium_9110N
abstract type IntelItanium_9120N <: IntelItanium_9100 end; export IntelItanium_9120N
abstract type IntelItanium_9130M <: IntelItanium_9100 end; export IntelItanium_9130M
abstract type IntelItanium_9140M <: IntelItanium_9100 end; export IntelItanium_9140M
abstract type IntelItanium_9140N <: IntelItanium_9100 end; export IntelItanium_9140N
abstract type IntelItanium_9150M <: IntelItanium_9100 end; export IntelItanium_9150M
abstract type IntelItanium_9150N <: IntelItanium_9100 end; export IntelItanium_9150N
abstract type IntelItanium_9152M <: IntelItanium_9100 end; export IntelItanium_9152M
abstract type IntelItanium_9015 <: IntelItanium_9000 end; export IntelItanium_9015
    