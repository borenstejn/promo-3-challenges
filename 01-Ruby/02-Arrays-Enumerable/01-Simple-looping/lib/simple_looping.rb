def sum_with_while(min,max)
	sum = min
	while max > min
		min +=1
		sum +=min
	end 
	return sum
end


  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a while..end structure

def sum_with_for(min,max)
  sum = 0
  for i in min..max
  	sum += i
  end
  return sum
end

def sum_recursive(min,max)
	fail ArgumentError if min > max
	return min if min == max
	return min+sum_recursive(min+1,max)

  #TODO (optional): return the sum of the integers between min and max
  #CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
end