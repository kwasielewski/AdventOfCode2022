function f()
  x = zeros(Int64, 0)
  record = 0
  sum = 0
  for line in eachline("calories.txt")
    if line == ""
      append!(x, sum)
      sum = 0
    else
      sum += parse(Int64, line)
    end
  end
  append!(x, sum)
  sort!(x)
  idx = size(x)[1]
  println(x[idx]+x[idx-1]+x[idx-2])
end

f()


