function f()
  record = 0
  sum = 0
  for line in eachline("calories.txt")
    if line == ""
      if sum > record
        record = sum
      end
      sum = 0
    else
      sum += parse(Int64, line)
    end
  end
  if sum > record
    record = sum
  end
  println(record)
end

f()


