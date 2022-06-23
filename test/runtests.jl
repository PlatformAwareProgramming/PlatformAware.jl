using PlatformAware
using Test

# list of tests
testfiles = [
    "basics.jl"
]

@testset "PlatformAware.jl" begin
    for testfile in testfiles
        println("Testing $testfile...")
        include(testfile)
    end
end
