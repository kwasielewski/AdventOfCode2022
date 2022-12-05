using Scanf
using DataStructures
function f()
  numstacks = 9
  numcrates = 8
  extraStack = Deque{Char}()
  sum = 0
  stacks = Deque{Char}[]
  for i in 1:numstacks
    push!(stacks, Deque{Char}())
  end
  idx = 0
  for line in eachline("stacks2.txt")
    if idx < numcrates
      for i in 0:numstacks-1
        if line[2+4*i] != ' '
          pushfirst!(stacks[i+1], line[2+4*i])
        end
      end
    elseif idx >= numcrates+2
      r, count, from, to = @scanf(line, "move %d from %d to %d", Int, Int, Int)
      for i in 1:count
        tmp = pop!(stacks[from])
        push!(extraStack, tmp)
      end
      for i in 1:count
        tmp = pop!(extraStack)
        push!(stacks[to], tmp)
      end
    end 
    #println(idx)
    idx+=1
  end
  
  for i in 1:numstacks
    print(last(stacks[i]))
  end

end

f()
