###############################################################################
#
# Introduction to Ruby on Rails
#
# Homework 03
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to help you better understand Arrays, Hashes and Loops that we
# learned in Lesson 03.
#
###############################################################################
#
# 1. Review your solution to Lab 02. Copy and Paste your solution to
#    this file.
#
# 2. Create a new Array variable called `set_of_numbers`, this will be
#    a range between 1 - 10 that our Player will guess from. Each value
#    in the Array should be an integer.
#
# 3. Change the variable `secret_number` (HW_02) so that instead of a hard-coded
#    Integer, it randomly chooses one of the options from `set_of_numbers`
#    ('secret_number' is the integer our Player will try to guess).
#
#      Hint: Look up Array#sample in the Ruby documentation.
#
# 4. Create a new Hash variable called `messages`. In this Hash will be
#    four Keys Value pairs:
#
#    1. :win - A String telling the Player that they have won.
#
#    2. :lose - A String telling the Player that they have lost and what
#       the correct number was.
#
#    3. :too_low - A String telling the Player that their guess was too
#       low.
#
#    4. :too_high - A String telling the Player that their guess was too
#       high.
#
# 5. Change the behavior of your program, so instead of hard coding, use the principles of DRY(don't repeat yourself). 
#    This means using a Loop to iterate over your code either until the Player has guessed the
#    correct number, or they have tried to guess 3 times.
#
# 6. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
#Put your solution below this line.
#
###############################################################################
#// hi coders. my name is Dan Tashman and I wrote this script

puts "Welcome to the Ruby Secret Number Game!"
first_name = "Dan"
last_name = "Tashman"
puts "This (particular) game was created by " + first_name + " " + last_name

puts "What's your name, gorgeous?" 
player_name = $stdin.gets.chomp
puts "Hi " + player_name + ", You have 3 guesses to guess the secret number between 1 and 10. Please guess"

secret_number = [set_of_numbers].sample
#the big secret. Generating a random number between 1-10 (aka set_of_numbers)

guesses_left = 3
#total number of guesses

set_of_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#array of integers 1-10

messages = { :win => [ "Congrats! You have guessed the secret number" ]
			 #player has guessed correctly
			 :lose => [ "Congrats! You have guessed the secret number" ] 
			 #game over
			 :too_low => [ "Sorry, That is not the secret number. You have #{guesses_left} tries left. Try a higher number." ] 
			 #player guess too low
			 :too_high => [ "Sorry, That is not the secret number. You have #{guesses_left} tries left. Try a lower number." ] 
			 #player guess too high
			}


player_guess = $std.puts.compt
#sets the varable for the user's input (i.e. guess)

loop do
	break if player_guess == secret_number
	puts "#{messages :win}"
	#player victory message
	while guesses_left <= 3
		if player_guess > secret_number
			puts "#{messages :too_high}"
			#player guess too high 
		else
			puts "#{messages :too_low}"
			#player guess too low 
		guesses_left - 1
			#subtract one guess
		if guesses_left == 0
			puts "#{[messages :lose]}"
			#no more guesses. game over
		end

 end
