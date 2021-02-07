#= BINARY AND DECIMAL PREFIXES:
2^10 ... kilo ... 10^3
2^20 ... mega ... 10^6
2^30 ... giga ... 10^9
...
2^(10*i) ... 10^(3*i)
=#

function simulate(multipliersOfInerest)
    i = 0
    for m in multipliersOfInerest
        while (big(2)^big(10 * i) < m*big(10)^big(3 * i))
            i +=1
        end
        println("Binary 2^$(10*i) is $m times larger than decimal 10^$(3*i) for i = $i")
    end
end

# Usage: simulate(multipliersOfInerest), where multipliersOfInerest ... range, array or something similar. 
println("Usage example: simulate(union(2:10, 100, 1000))")