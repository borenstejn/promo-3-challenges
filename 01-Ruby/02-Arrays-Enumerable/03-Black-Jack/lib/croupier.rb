require_relative 'black_jack'

def play_game
	



	answer = "y"
	while answer == "y" || answer == "yes"
		print "Do you want antother card ?"
		answer = gets.chomp
	end
end

  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card

def state_of_the_game(score, bank)
	"Your score is #{score} and the bank is #{bank}"
  # TODO: Returns custom message with player's score and bank's score
end


def asking_for_card?(score)
		print "Cards ?"
		answer = gets.chomp
		if answer == "y" || answer == "yes" then return true
		else return false
		end


  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
end

def build_message_for(outcome)
  if outcome[1] == 21 then puts "Black Jack !  You win !"
  elsif outcome[1] > 21 then puts "You loose !"
  elsif outcome[1] >= outcome[0] then puts "You win !"
  else puts "You loose !"
  end
end

#TODO: return specific message depending on the game outcome (= bank's score and user's score)


