def array_to_hash(array)
hash = Hash.new
array.each_with_index {|item, index|
  if block_given?
    then hash[yield(index)] = item
  else hash[index] = item
  end
}

return hash

end


#TODO: implement the method :)