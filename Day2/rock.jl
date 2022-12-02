function f()
	sum = 0
	for line in eachline("rock.txt")
		if(line[3]=='X')
			sum +=1
			if(line[1]=='A')
				sum+=3
			end
			if(line[1]=='C')
				sum+=6
			end
		elseif (line[3]=='Y')
			sum += 2
			if(line[1]=='A')
				sum+=6
			end
			if(line[1]=='B')
				sum+=3
			end
		else
			sum+=3
			if(line[1]=='B')
				sum+=6
			end
			if(line[1]=='C')
				sum+=3
			end

		end

	end
	println(sum)
end

f()


