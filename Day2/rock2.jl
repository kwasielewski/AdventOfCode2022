function f()
	sum = 0
	for line in eachline("rock.txt")
		if(line[3]=='X')
			sum +=0
			if(line[1]=='A')
				sum+=3
			end
			if(line[1]=='B')
				sum+=1
			end
			if(line[1]=='C')
				sum+=2
			end
		elseif (line[3]=='Y')
			sum += 3
			if(line[1]=='A')
				sum+=1
			end
			if(line[1]=='B')
				sum+=2
			end
			if(line[1]=='C')
				sum+=3
			end
		else
			sum+=6
			if(line[1]=='A')
				sum+=2
			end
			if(line[1]=='B')
				sum+=3
			end
			if(line[1]=='C')
				sum+=1
			end

		end

	end
	println(sum)
end

f()


