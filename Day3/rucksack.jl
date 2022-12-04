function ltn(c::Char)
	v = Int(c)
	if v >= 97
		return v - 97 + 1
	else
		return v - 65 + 1 + 26
	end
end
function f()
	
	sum = 0

	for line in eachline("rucksack.txt")
		x = length(line)
		x = x ÷ 2
		y = zeros(Bool, 52)
		for i in 1:x
			y[ltn(line[i])] = true
		end
		for i in x+1:length(line)
			if y[ltn(line[i])]
				sum += ltn(line[i])
                                break
			end
		end
	end
	
	println(sum)

end

f()
