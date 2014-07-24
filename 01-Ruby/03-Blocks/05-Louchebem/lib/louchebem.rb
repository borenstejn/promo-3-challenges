# Encoding: utf-8

def word_louchbemize(word)
  if word.size == 1
    return word
  elsif word.start_with?("a","e","i","o","u","y")
    letters = word.chars
    letters << "em"
    new_word = letters.join
    return new_word.insert(0, "l")
  elsif word[1] != "a" && word[1] != "e" && word[1] != "i" && word[1] != "o" && word[1] != "u"
    letters = word.chars
    letters_inv = letters.reverse
    letters_inv.pop(2)
    new_letters = letters_inv.reverse
    new_letters << letters[0] << letters[1] << "em"
    new_word = new_letters.join
    return new_word.insert(0, "l")
  else
    letters = word.chars
    letters_inv = letters.reverse
    letters_inv.pop
    new_letters = letters_inv.reverse
    new_letters << letters[0] << "em"
    new_word = new_letters.join
    return new_word.insert(0, "l")
  end
end






def louchebemize(sentence)
  words = sentence.split
  words_louchbem = []
  for i in 0..words.size-1 do
    words_louchbem << word_louchbemize(words[i])
  end
  new_sentence = words_louchbem.join(" ")
end







  #TODO: implement your louchebem translator

#diviser par mot
#mettre tous les mots dans un tableau
#transformer tous les mots
#afficher les nouveaux mots du tableau


#récuperer les lettres du mot
#si c'est un consomne le mettre à la fi
#mettre un l devant
#mettre un suffixe

#si c'est un voyelle le mettre à la fi
#mettre un l devant
#mettre un suffixe