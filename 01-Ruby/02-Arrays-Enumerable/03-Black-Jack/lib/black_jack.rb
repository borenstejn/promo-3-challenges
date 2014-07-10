def bank_score
	21-rand(6)
  # TODO: Use Random to get a new random score
end

def pick_card
	1+rand(11)
  # TODO: Use Random to get a new random card
end

def game_outcome(bank, score)
	return [bank, score]
  # TODO: Take the bank and the score and output an array containing the bank and then the score
end
