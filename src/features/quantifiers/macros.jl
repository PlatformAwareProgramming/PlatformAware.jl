# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

macro quantifier(n)
    nn = eval(n)
    get_quantifier(nn)
end

macro atleast(n)
    N = n==:∞ || n==:inf ? "AtLeastInf" : "AtLeast" * string(n) 
#    Meta.parse("Type{<:Tuple{$N,AtMostInf,X} where X}")
    Meta.parse("Tuple{$N,AtMostInf,X} where X")
end

macro atleast(n,x)
    N = n==:∞ || n==:inf ? "AtLeastInf" : "AtLeast" * string(n) 
#    Meta.parse("Type{<:Tuple{$N,AtMostInf,$(x)}}")
    Meta.parse("Tuple{$N,AtMostInf,$(x)}")
end

macro atmost(n)
    N = n==:∞ || n==:inf ? "AtMostInf" : "AtMost" * string(n);
#    Meta.parse("Type{<:Tuple{AtLeast0,$N,X} where X}")
    Meta.parse("Tuple{AtLeast0,$N,X} where X")
end

macro atmost(n,x)
    N = n==:∞ || n==:inf ? "AtMostInf" : "AtMost" * string(n);
#     Meta.parse("Type{<:Tuple{AtLeast0,$N,$(x)}}")
    Meta.parse("Tuple{AtLeast0,$N,$(x)}")
end

macro between(m,n)
    M = m==:∞ || n==:inf ? "AtLeastInf" : "AtLeast" * string(m)
    N = n==:∞ || n==:inf ? "AtMostInf" : "AtMost" * string(n)
#    Meta.parse("Type{<:Tuple{$M,$N,X} where X}")
    Meta.parse("Tuple{$M,$N,X} where X")
end

macro between(m,n,x)
    M = m==:∞ || n==:inf ? "AtLeastInf" : "AtLeast" * string(m)
    N = n==:∞ || n==:inf ? "AtMostInf" : "AtMost" * string(n)
#    Meta.parse("Type{<:Tuple{$M,$N,$(x)}}")
    Meta.parse("Tuple{$M,$N,$(x)}")
end

macro just(m)
    M = m==:∞ || m==:inf ? "AtLeastInf" : "AtLeast" * string(m)
    N = m==:∞ || m==:inf ? "AtMostInf" : "AtMost" * string(m)
#    Meta.parse("Type{<:Tuple{$M,$N,X} where X}")
    Meta.parse("Tuple{$M,$N,X} where X")
end

macro just(m,x)
    M = m==:∞ || m==:inf ? "AtLeastInf" : "AtLeast" * string(m)
    N = m==:∞ || m==:inf ? "AtMostInf" : "AtMost" * string(m)
#    Meta.parse("Type{<:Tuple{$M,$N,$(x)}}")
    Meta.parse("Tuple{$M,$N,$(x)}")
end


macro unrestricted()
    @atleast 0
end