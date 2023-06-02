function bisect(f, a::Float64, b::Float64, tol::Float64)
    if f(a)*f(b) > 0
        error("f(a)とf(b)は異符号じゃなきゃだめ〜!!")
    end

    while abs(b-a) > tol
        mid = 0.5*(a+b)
        if f(mid) * f(a) > 0
            a = mid
        elseif f(mid) * f(b) > 0
            b = mid
        elseif f(mid) == 0
            a = mid
            b = mid
        end
    end

    return 0.5*(a + b)
end


function diff_func(f, x)
    Δx = 1e-10
    f_prime = (f(x+Δx)-f(x))/Δx
    return f_prime
end


function newton(f, a::Float64, tol::Float64)
    xb = a
    xf = xb - f(xb)/diff_func(f, xb)
    while abs(xb - xa) > 
    
    return nothing
end