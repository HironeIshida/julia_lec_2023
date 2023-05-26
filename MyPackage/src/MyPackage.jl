module MyPackage

greet() = print("Hello World!")
greet2() = println("newfunction")

struct MyType
    X::Int
    Y::Int
    Z::Int
end

include("iseven.jl")
include("bisect.jl")

end # module MyPackage
