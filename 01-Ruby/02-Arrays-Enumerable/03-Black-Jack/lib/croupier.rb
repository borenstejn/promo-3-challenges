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
	"Your score is #{score}, bank is #{bank}!"
  # TODO: Returns custom message with player's score and bank's score
end


def asking_for_card?(score)
		print "Cards ?"
		answer = gets.chomp
		if answer == "y" || answer == "yes"
      return true
		else return false
		end
  end


  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice


def build_message_for(outcome)
  if outcome[1] == 21
    return "Black Jack!"
  elsif outcome[1] > 21
    return "You are over 21... you loose."
  elsif outcome[1] > outcome[0]
    return "You beat the bank! You win."
  else return "Bank beats you! You loose."
  end
end

#TODO: return specific message depending on the game outcome (= bank's score and user's score)


