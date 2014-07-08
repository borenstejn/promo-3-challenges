require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.
text = ""
until text == "I am going to work right now SIR !"
	puts "WHAT DO YOU HAVE TO SAY ?"
	text = gets.chomp
	puts coach_answer(text)
end