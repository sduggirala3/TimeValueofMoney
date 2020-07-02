function future_given_present(input, g, i, T)
    return input*(1+i)^T
end

function present_given_future(input, g, i, T)
    return input/(1+i)^T
end

function present_given_annuity(input, g, i, T)
    return input * ((1-(1+g)^T) * (1+i)^-T) / (i-g)
end

function annuity_given_present(input, g, i, T)
    return out / ((1-(1+g)^T) * (1+i)^-T) * (i-g)
end

function future_given_annuity(input, g, i, T)
    return input * ( (1+i)^T - (1+g)^T ) / (i-g)
end

function annuity_given_future(input, g, i, T)
    return input / ( (1+i)^T - (1+g)^T ) * (i-g)
end

function main()

    f = getfield(Main, Symbol(ARGS[1]))
    input = parse(Int64, ARGS[2])
    g = parse(Float64, ARGS[3])
    i = parse(Float64, ARGS[4])
    T = parse(Int64, ARGS[5])

    println(f(input, g, i, T))
end

main()
