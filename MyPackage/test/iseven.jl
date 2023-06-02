import MyPackage: myiseven

@testset "myiseven1" begin
    @test myiseven(2)
    @test !myiseven(3)
    @test myiseven(2) == true
    @test myiseven(3) == false
    for i in 1:10
        @test myiseven(i) == (i % 2 == 0)
    end
end