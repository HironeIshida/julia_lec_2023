import MyPackage: bisect
import MyPackage: diff_func
import MyPackage: Newton

testdata_bisect = [
    (x -> x^2 - 2.0, 0.0, 2.0, 1e-10, sqrt(2)),
    (x -> x^2 - 5.0, 0.0, 5.0, 1e-10, sqrt(5)),
    (x -> cos(x), 0.0, 1*π, 1e-10, π/2),
    (x -> exp(x)-2.0, 0.0, 10.0, 1e-10, log(2)),
    (x -> x^2 - 2.0*x, -1.0, 1.0, 1e-10, 0.0),
    (x -> x^2 - 2.0*x, 1.0, 3.0, 1e-10, 2.0)
    ]


@testset "bisect" begin
    @testset "bisect" for (f, a, b, tol, root) in testdata_bisect
        @test bisect(f, a, b, tol) ≈ root
    end
end


@testset "diff_func" begin
    @testset "diff_func" for (f, x, ans) in [
        (x -> x^2, 1.0, 2.0),
        (x -> exp(x), 0.0, 1.0)
    ]
        @test isapprox(diff_func(f, x), ans, atol=1e-5)
    end
end


@testset "Newton" begin
    @test true
end
