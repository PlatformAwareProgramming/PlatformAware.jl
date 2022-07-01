# ------------------------------------------------------------------
# Licensed under the MIT License. See LICENCE in the project root.
# ------------------------------------------------------------------

macro atleast(n)
    N = n==:∞ || n==:inf ? "AtLeastInf" : "AtLeast" * string(n) 
    eval(Meta.parse("Tuple{" * N * ",AtMostInf}"))
end

macro atmost(n)
    N = n==:∞ || n==:inf ? "AtMostInf" : "AtMost" * string(n);
    eval(Meta.parse("Tuple{AtLeast0," * N * "}"))
end

macro between(m,n)
    M = m==:∞ || n==:inf ? "AtLeastInf" : "AtLeast" * string(m)
    N = n==:∞ || n==:inf ? "AtMostInf" : "AtMost" * string(n)
    eval(Meta.parse("Tuple{" * M * "," * N * "}"))
end

macro just(m)
    M = m==:∞ || m==:inf ? "AtLeastInf" : "AtLeast" * string(m)
    N = m==:∞ || m==:inf ? "AtMostInf" : "AtMost" * string(m)
    eval(Meta.parse("Tuple{" * M * "," * N * "}"))
end

macro unrestricted()
    @atleast 0
end