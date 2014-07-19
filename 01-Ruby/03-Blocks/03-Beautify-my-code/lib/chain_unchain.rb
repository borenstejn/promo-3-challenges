def shuffle_word(a_word)

  #TODO: refactor this method

  a_worp.upcase.chars.to_a.shuffle
  
end


def quote_prime_numbers(n)
  #TODO: refactor this method


  prime_numbers = (1..n).find_all do |i|
 	selection = (2..i-1).select {|k| i % k == 0}
 	selection.count == 0
 	end
 prime_numbers.map{ |prime_num| "#{prime_num} is prime"}



end