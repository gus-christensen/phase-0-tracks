
require_relative "game"

describe HangedGame do
	let(:hangedgame) {HangedGame.new("Turtle Power")}

	it "shows the gameboard after several right answers" do
		hangedgame.take_a_guess("t")
		hangedgame.take_a_guess("p")
		hangedgame.take_a_guess("e")
		hangedgame.take_a_guess("r")
		expect(hangedgame.show_gameboard).to eq "t _ r t _ e   p _ _ e r "
	end
#RED TO GREEEEEEN!


	it "narrows the guessing pool" do
		hangedgame.take_a_guess("t")
		hangedgame.take_a_guess("p")
		hangedgame.take_a_guess("e")
		hangedgame.take_a_guess("r")
		expect(hangedgame.remaining_letters).to eq "abcdfghijklmnoqsuvwxyz"
	end


end

#	it "" do
#		expect(hangedgame. ( )).to eq 

#	it "" do
#		expect(hangedgame. ( )).to eq 

#One user can enter a word (or phrase, 
#if you would like your game to support that), 
#and another user attempts to guess the word.
#--game should set all input text to lowercase 
#--and check that the string only contains letters and spaces.
#--prompt again if string contains numbers/punctuation/etc
#--the class's initialize input is the first user's string.
#--the input should either be taken in password format.. 
#--or the terminal should be cleared after initializing.

#Guesses are limited, 
#and the number of guesses available is related to the length of the word.


#Repeated guesses do not count against the user.
#--each guess is found and deleted from an alphabet array.
#--if the letter has already been deleted from the array, 
#--prompt for a new guess; "you already guessed that!"
#--the length of the mapped alphabet array will determine if user2 has run out of guesses.

#The guessing player receives continual feedback on the current state of the word. 
#So if the secret word is "unicorn", 
#the user will start out seeing something like "_ _ _ _ _ _ _", 
#which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
#--input string is split into an array. 
#--the feedback display checks if each letter in the new array still exists in the guessing pool,
#--if the letter is still in the alphabet array, it is substituted by "_"

#The user should get a congratulatory message if they win, 
#and a taunting message if they lose.
#--when user2 runs out of guesses. game over.
#--when none of the letters in the secret word array are still remaining in alphabet array.