#= BINARY AND DECIMAL PREFIXES:
2^10 ... kilo ... 10^3
2^20 ... mega ... 10^6
2^30 ... giga ... 10^9
...
2^(10*i) ... 10^(3*i)
=#

function simulate()
    i = 0

    while (big(2)^big(10 * i) < 2*big(10)^big(3 * i))
        i +=1
    end
    println("Binary is 2 times larger than decimal for i = $i")

    
    while (big(2)^big(10 * i) < 3*big(10)^big(3 * i))
        i +=1
    end
    println("Binary is 3 times larger than decimal for i = $i")
    
    
    while (big(2)^big(10 * i) < 4*big(10)^big(3 * i))
        i +=1
    end
    println("Binary is 4 times larger than decimal for i = $i")
    
    
    while (big(2)^big(10 * i) < 5*big(10)^big(3 * i))
        i +=1
    end
    println("Binary is 5 times larger than decimal for i = $i")
    
    
    while (big(2)^big(10 * i) < 6*big(10)^big(3 * i))
        i +=1
    end
    println("Binary is 6 times larger than decimal for i = $i")
    
    
    while (big(2)^big(10 * i) < 7*big(10)^big(3 * i))
        i +=1
    end
    println("Binary is 7 times larger than decimal for i = $i")
    
    
    while (big(2)^big(10 * i) < 8*big(10)^big(3 * i))
        i +=1
    end
    println("Binary is 8 times larger than decimal for i = $i")
    
    
    while (big(2)^big(10 * i) < 9*big(10)^big(3 * i))
        i +=1
    end
    println("Binary is 9 times larger than decimal for i = $i")
    
    
    while (big(2)^big(10 * i) < 10*big(10)^big(3 * i))
        i +=1
    end
    println("Binary is 10 times larger than decimal for i = $i")



    while (big(2)^big(10 * i) < 100*big(10)^big(3 * i))
        i +=1
    end
    println("Binary is 100 times larger than decimal for i = $i")
    
    # At this point, the 2-based value is actually one step further than 10-based.
    # As though 1 kibibyte were as big as 1 megabyte
    while (big(2)^big(10 * i) < 1000*big(10)^big(3 * i))
        i +=1
    end
    println("Binary is 1000 times larger than decimal for i = $i")


end


# Helper function to help me write the code. Could have just used a for-loop inside the simulate() function :face_palm:
function kreator(step)
    for j in step
        println("""
    while (big(2)^big(10 * i) < $j*big(10)^big(3 * i))
        i +=1
    end
    println("Binary is $j times larger than decimal for i = \$i")""")
    println("\n")
end
end


# Run the simulation.
simulate()