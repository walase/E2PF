function brent(N,c,M)
  x::BigInt = 0
  y::BigInt = x
  trap = 0
  nexttrap = 1

  for i=1:M
    x = mod(((x*x)+c),N)
    f::BigInt = gcd((x-y),N)
    if f != 1
      if f == N
        println("Echec:collision modulo $N")
        return
      else
        println("Trouver $f comme facteur de  $N")
        return
      end
    end
    if i == nexttrap
      trap = nexttrap
      nexttrap = 2 * trap
      y = x
    end
  end
  println("Echec")
  return
end

brent(5202454525878584579698546355354787521,2,50)
