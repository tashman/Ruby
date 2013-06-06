class Game
#	Make sure that all the instance variables in this class may only be READ and not WRITTEN to. 
  attr_reader :guesses_allowed, :current_guess_count, :current_guess; :total_guesses

  @@messages = { win: "You won!",
                 lose:  "You lost! :-(",
                 too_low: "Your guess was too low!",
                 too_high: "Your guess was too high!" }


	# Initializes The number of guesses (or tries) a player is allowed before the game ends.
	# You should default number of guesses to 3 if the parameter is null.
	# Sets a guess counter to zero.
	# Creates a new instance of the Player class. 
	# Creates a new instance of the SecretNumber class and assigns it to the secret_number. Don't forget to pass along the
	# necessary parameters.
  	# initializes the current guess to nil
  def initialize(guesses_allowed=3, set_of_numbers)
      @guesses_allowed = guesses_allowed
      @set_of_numbers = set_of_numbers.to_i
    end

      while @guesses_allowed > current_guess_count
        # white the # of remaining guesses 
        3.times do |count|
            # execute the below code 3 times
            puts "You have #{ guesses_left } guesses left!"
            # guess counter
            puts "\nPlease make your guess:"
            # guess request
            players_guess = $stdin.gets.chomp.to_i
            #pulls info from input
            guesses_left - 1
            #subtracts 1
      end
  

  # Print who made this wonderful program :-)
  def print_created_by
    puts "\nmade by dan tashman"

  end
  

	# Calls `print_created_by` so that your players knows you created the game.
	# Asks the player to enter his/her name. Save it to @player.name.
	# Print out the number of guesses the players gets and the range of numbers they can choose from.
	# Asks the player for his/her guess. Use the `guess_correct?` method to verify the guess.
	# Continue to ask the user to guess the number so long as they have not maximized the number of guesses allowed 
	# and they did not guess correctly. 
  # Each time tell the player how many guesses left they have.
	# If at the end of the loop they still did not guess correctly, tell the player that they have lost using the
	# `@@messages` class variable and tell them the secret number.
  def start_game

      puts "\nWelcome to the Secret Number Game!"

      first_name = "Daniel"
      last_name = "Tashman"

      puts "Created by " + first_name + " " + last_name

      puts "\nWhat's your name, gorgeous?"
      #asks name

      player_name = $stdin.gets.chomp
      #assigns player name 

      puts "Hi, #{player_name}! You have 3 guesses to guess the Secret Number between 1 and 10"
      puts "\nPlease make your guess:"
      #asks for player input
  
      players_guess = $stdin.gets.chomp.to_i
      #pulls player guess from input

  end



	# This method checks if the player guessed the correct secret number. 
  # It shoudl print out if they guessed correctly or guessed too high or too low.
	# Use the `@@messages` Hash to display this feedback.
	# Also let the player know how many guesses they have left.
	# If the guess is correct, make sure to return true, otherwise return false.
  def guess_correct?(guess)
    if secret_number == players_guess
      puts messages[:win]
      #winner!
      puts "You guessed in #{count + 1} turns!"
      #counter result
      exit
    elsif secret_number > players_guess
      puts messages[:too_low]
       #guess too low
      puts "You have #{count - 1} guesses left."
      #reminder of remaining guesses
    elsif secret_number < players_guess
      puts messages[:too_high]
       #guess too high
      puts "You have #{count - 1} guesses left."
      #reminder of remaining guesses
    end
  end


  # This method should increment every time the player guesses incorrectly.
  def increment_guess_count
    for each.players_guess
    
    
  end
  

  # Calculates the guesses the player has left.
  def guesses_left

  end
end

