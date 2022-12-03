function ltn(c::Char)
	v = Int(c)
	if v >= 97
		return v - 97 + 1
	else
		return v - 65 + 1 + 26
	end
end
function f()
	y = zeros(Int, 52)
	sum = 0
    idx = 0
	for line in eachline("rucksack.txt")
        z = zeros(Bool, 52)
        if idx == 0
            for i in 1:52
                y[i]=0
            end
        end
        x = length(line)
		
		for i in 1:x
            if (!z[ltn(line[i])])
                z[ltn(line[i])] = true
			    y[ltn(line[i])] += 1
                if (y[ltn(line[i])] == 3)
                    sum += ltn(line[i])
                    break
                end
            end
        end
        idx = mod(idx+1, 3) 
	end
	
	println(sum)

end

f()
