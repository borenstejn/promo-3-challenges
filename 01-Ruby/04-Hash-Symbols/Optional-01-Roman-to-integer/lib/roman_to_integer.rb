def roman_to_integer(roman_string)
  #TODO: translate roman string to integer



end

# testing your program
puts roman_to_integer('IV') == 4 # => true
puts roman_to_integer('XII') == 12 # => true
puts roman_to_integer('XIX') == 19 # => true

num.each_char {|c| arnum << c}

def char_to_array(romain)
  arnum=[]
  romain.each_char {|c| arnum << c}
  return arnum
end

def roman_to_integers(romain)
  lexic = {
    "I" => 1,
    "V" => 5,
    "X" => 10
  }
  romain.chars.map {|letter| lexic[letter] }
end

def sum(array)
  sum = 0
  array.each do |x|
    sum += x
  end
  return sum
end

def sumromantest(array)
  sum = array[0]
  for n in (1..array.count-1)
    if array[n]<=array[n-1]
      sum+=array[n]
    else
      sum=array[n]-sum
    end
  end
  return sum
end


def sumromain(array)
  sum = 0
  array.each_with_index do |value, index|
    puts "#{value} --- #{index}"
  end
end




def aroman_transform(array)
  for i in (1..array.size-2)
    if array[i] < array[i+1] && array[i] != array[i-1]
      array[i] = array[i]*(-1)
    end
  end
  return array
end





