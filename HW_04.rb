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

player_name = $stdin.gets.chomp

puts "Hi, #{player_name}! You have 3 guesses to guess the Secret Number between 1 and 10"


set_of_numbers = (1..10).to_a

secret_number = set_of_numbers.sample

current_guess_count = 1

def guesses_left (current_guess_count)
	#defines default # of guesses made to zero
	@current_guess_count = current_guess_count
	#defines the instance variable
	3 - @current_guess_count.to_i
	# subtracts the number of guesses from 3, giving the current number of guesses left.
end


def increment_guess_count (current_guess_count)
	@current_guess_count = current_guess_count
	1 + @current_guess_count 
 
end


#insert first code part

messages = Hash.new
messages[:win] = "You won in #{current_guess_count} turns!"
messages[:lose] = "Sorry. You lose. The secret number was #{secret_number}!"
messages[:too_low] = "Your guess was too low! You have #{current_guess_count} guesses left."
messages[:too_high] = "Your guess was too high! You have #{current_guess_count} guesses left." 



3.times do |count|
	while increment_guess_count > 3
		  # execute the below code 3 times
		  puts "Please make your guess:"
		  # guess request
		  players_guess = $stdin.gets.chomp.to_i
		  #pulls info from input

		  if secret_number == players_guess
		    puts messages[:win]
		    #winner!
		    exit
		    #exit game
		  elsif secret_number > players_guess
		    puts messages[:too_low]
		    #guess too low
		  elsif secret_number < players_guess
		    puts messages[:too_high]
		    #guess too high
		  end 

		  	if increment_guess_count == 3
		  		puts messages[:lose]
		  		#Lose message
		  		exit
		  		#exit game
		  end
	end


  

end







