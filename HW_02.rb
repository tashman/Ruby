###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 02
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to test your knowledge of Variables and Conditionals which we
# learned in Lesson 02.
#
###############################################################################
#
# 1. Welcome users to your game. Let them know you are the creator. 
#
# 2. Ask the user for their name and store it in a variable.
#
# 3. Personally greet the player by printing to the screen, "Hi player_name! 
#	 Let them know they have 3 guesses to guess the Secret Number between 1 and 10.
#
# 4. Create a new Integer variables called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.
#
# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
#
# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.
#
# 7. Ask the Player to make their first guess. (Remember to cast input from the Player into the appropriate
#    data type).
#    
# 8.  Use a Conditional to find out if the Player has guessed the
#     correct number.
#
#     1. If they guessed correctly, tell them they won and exit the
#        script.
#	
#	  2. For an incorrect guess decrement the variable `guesses_left` by 1 and
#     print to the screen how many guesses the Player has left.
#
#     		1. If they guessed a number too low, tell them that they need to
#        	   guess higher on their next guess.
#
#     		2. If they guessed a number too high, tell them that they need to
#        	   guess lower on their next guess.
#		
# 9. Repeat the above process for a total of 3 times asking the Player
#     to make a guess and verify if the Player won.
#
# 10. If they do not make the correct guess after 3 tries, print that
#     the Player loses and what the `secret_number` was.
#
# 11. Make sure to add helpful comments to your code to document what
#     each section does.
#
###############################################################################
#
# Student's Solution
#
###############################################################################
#// hi coders. my name is Dan Tashman and I wrote this script

puts "Welcome to the Ruby Secret Number Game!"
first_name = "Dan"
last_name = "Tashman"
puts "This (particular) game was created by " + first_name + " " + last_name

puts "What's your name, player?"
player_name = $stdin.gets.chomp
puts "Hi " + player_name + "! You have 3 guesses to guess the Secret Number between 1 and 10. Please guess"

secret_number = 6
#the big secret

guesses_left = 3
#total number of guesses

player_guess = $std.puts.compt
#sets the varable for the user's input (i.e. guess)

if player_guess == secret_number 
	puts "Congrats! You have guessed the secret number"
	#lucky guess

else
	guesses_left - 1
	#subtract 1 from the number of guesses left.
	if player_guess > secret_number
	puts "Sorry, That is not the secret number. You have #{guesses_left} tries left. Try a lower number:"
	#player guess too high
	elsif player_guess < secret_number
	puts "Sorry, That is not the secret number. You have #{guesses_left} tries left. Try a higher number:"
	#player guess too low

	if guesses_left == 0
		puts "Sorry #{player_name}, the secret number was 6. You have no more guesses left."
		#game over

 end



