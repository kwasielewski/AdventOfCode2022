using Scanf
function f()
	
  sum = 0

	for line in eachline("./day4.txt")
    r, a, b, c, d = @scanf(line, "%d-%d,%d-%d", Int, Int, Int, Int)
    #println(a, b, c, d)
    l = max(a, c)
    p = min(b, d)
    if l <=p 
      sum += 1
    end
	end
	
  println(sum)

end

f()
