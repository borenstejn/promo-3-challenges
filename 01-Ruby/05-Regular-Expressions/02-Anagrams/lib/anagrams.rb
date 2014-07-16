def anagrams?(a_string, another_string)
  array = a_string.downcase.delete(" '-").chars.sort
  another_array = another_string.delete(" '-").chars.sort
  if array == another_array
    return true
    else return false
  end

  #TODO: implement the obvious method to test if two words are anagrams
end

def anagrams_on_steroids?(a_string, another_string)
  a_hash = Hash.new
  another_hash = Hash.new
  a_string.downcase.delete(" '-?!").each_char do |c|
    a_hash [c] = a_string.downcase.delete(" '-?!").count(c)
  end
  another_string.downcase.delete(" '-?!").each_char do |c|
    another_hash [c] = another_string.downcase.delete(" '-?!").count(c)
  end
  if a_hash == another_hash
    then return true
  else return false
  end
end

  #TODO: implement the improved methody


