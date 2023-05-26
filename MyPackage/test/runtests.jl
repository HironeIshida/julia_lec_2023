import MyPackage: myiseven
import MyPackage: bisect
using Test

@testset "myiseven1" begin
    @test myiseven(2)
    @test !myiseven(3)
    @test myiseven(2) == true
    @test myiseven(3) == false
    for i in 1:10
        @test myiseven(i) == (i % 2 == 0)
    end
end

@testset "bisect" begin
    @testset "bisect" for i in [
        (x -> x^2 - 2.0, 0.0, 2.0, 1e-10, sqrt(2)),
        (x -> x^2 - 5.0, 0.0, 5.0, 1e-10, sqrt(5)),
        (x -> cos(x), 0.0, 1*π, 1e-10, π/2),
        (x -> exp(x)-2.0, 0.0, 10.0, 1e-10, log(2))
        ]
        f = i[1]
        @test bisect(f, i[2], i[3], i[4]) ≈ i[5]
    end
end

#パッケージモード activate .
#using Revise
#using MyPackage
#include("MyPackage/test/runtests.jl")


nothing