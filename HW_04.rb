###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 04
#
# Purpose:
#
# Read the steps below and complete the exercises in this file. This Lab
# will help you to review the basics of Object-Oriented Programming that
# we learned in Lesson 04.
#
###############################################################################
#
# 1. Review your solution to Lab 03. Copy and Paste your solution to
#    this file.
#
# 2. Create a new method called `increment_guess_count` that takes
#    an integer parameter and increments it by 1.
#
# 3. Create a new method called `guesses_left` that calculates how many guesses 
#	 out of 3 the Player has left. The method should take one parameter that is the 
#	 number of guesses the player has guessed so far. Use this new method in your 
#	 code to tell the user how many guesses they have remaining. 
#
# 4. Make sure to remove your local variable `guesses_left` and use the
#    new method instead.
#
# 5. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
# Student's Solution
#
###############################################################################

puts "\nWelcome to the Secret Number Game!"

first_name = "Daniel"
last_name = "Tashman"

puts "Created by " + first_name + " " + last_name

puts "\nWhat's your name, gorgeous?"
#asks player name

player_name = $stdin.gets.chomp
#player name input

puts "Hi, #{player_name}! You have 3 guesses to guess the Secret Number between 1 and 10"
#informs player of game rules

remaining_guesses = 0
#sets variable to hold # of guesses left

set_of_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 10]
#array of numbers available to choose from

secret_number = set_of_numbers.sample
#sets the secret number to be a random number

puts "\nPlease pick a number."
#taking the players guess

def increment_guess_count(integer)
	integer += 1
	#incrementally adds one every time the player guesses
end

def guesses_left(number)
	3 - number
	#sets guesses left as 3 minus that number
end


messages = Hash.new
messages[:win] = "Congrats #{player_name}, #{secret_number} is the correct number! You win!"
messages[:lose] = "Sorry. You lose. The secret number was #{secret_number}!"
messages[:too_low] = "Your guess was too low! Try again."
messages[:too_high] = "Your guess was too high! Try again." 



3.times do
	while guesses_left(remaining_guesses) > 0	
	remaining_guesses = increment_guess_count(remaining_guesses)
	#remaining guesses = a function of remaining guesses	
	 player_guess = $stdin.gets.chomp.to_i
		#takes player input and converts it to integer
		if secret_number == player_guess
		puts messages[:win]
		exit
		#Player correctly guesses
		elsif secret_number > player_guess 
		puts messages[:too_low]
		#player guesses too low
		elsif secret_number < player_guess 
		puts messages[:too_high]
		#player guesses too high
		end
	end
end

puts messages[:lose]
#player has guessed 3x incorrectly. display lose message