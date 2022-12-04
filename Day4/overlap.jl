using Scanf
function f()

  sum = 0

  for line in eachline("day4.txt")
    r, a, b, c, d = @scanf(line, "%d-%d,%d-%d", Int, Int, Int, Int)
    #println(a, b, c, d)
    if (a<=c && d <= b) || (c<=a && b <= d)
      sum += 1
    end
  end
  
  println(sum)

end

f()
