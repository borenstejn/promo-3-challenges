def sum_odd_indexed(array)
  sum = 0
  array.each_with_index do |item, index|
    if index%2 == 1 then sum += item
    end
  end

  return sum
    
end

  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.) 
  #       You should make use Enumerable#each_with_index

 
def even_numbers(array)
  array.select do |item|
    item%2 == 0
  end
end

  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select


def short_words(array, max_length)
  array.reject {|item| item.length > max_length}
end


  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
 
def first_under(array, limit)
  array.find {|item| item < limit }
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
end
 
def add_bang(array)
  array.map {|item| "#{item}!"}
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
end
 
def product(array)
  array.reduce(:*)
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce
end
 
def sorted_pairs(array)
  slice=[]
  array.each_slice(2) {|array| slice << array.sort}
  slice
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
end


