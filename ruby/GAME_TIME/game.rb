#PSEUDOCODE:

#One user can enter a word (or phrase, 
#if you would like your game to support that), 
#and another user attempts to guess the word.
#--game should set all input text to lowercase 
#--the class's initialize input is the first user's string.
#--the input should either be taken in password format.. 
#--or the terminal should be cleared after initializing.
class HangedGame
	attr_accessor :is_over, :remaining_guesses, :remaining_letters, :phrase_array

	def initialize(phrase)
		@phrase = phrase.downcase
		@phrase_array = phrase.downcase.split(//)
		@phrase_uniq_char = phrase.delete(" ").downcase.split(//).uniq
		@remaining_letters = "abcdefghijklmnopqrstuvwxyz"
		@is_over = false
		if @phrase_uniq_char.length <= 9
			@remaining_guesses = @phrase_uniq_char.length + 3
		else
			@remaining_guesses = 12
		end 
		puts "starting guessing! Here's the clue:"
	end

	def show_gameboard
		x = 0
		@gameboard_array = []
		until x == @phrase_array.length
			if @remaining_letters.include?(@phrase_array[x])
				@gameboard_array.push("_ ")
				x += 1
			else
				@gameboard_array.push(@phrase_array[x] + " ")
				x += 1
			end
		end
		puts @gameboard_array.join
	end

	def take_a_guess(letter)
		if @remaining_letters.include?(letter)
			@remaining_letters = @remaining_letters.delete(letter)
			@remaining_guesses -= 1
			if @phrase_array.include?(letter)
				puts "You Guessed Right! guesses remaining:#{@remaining_guesses}"
			else
				puts "not a match."
			end
		else
			puts "you already guessed that!"
		end	
	end
end

game = HangedGame.new("turtles yes")
game.show_gameboard

while !@is_over
	
game.take_a_guess(gets.chomp)
game.show_gameboard



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