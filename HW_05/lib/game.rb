class Game
#	Make sure that all the instance variables in this class may only be READ and not WRITTEN to. 
  attr_reader :guesses_allowed, :current_guess_count, :current_guess; :total_guesses; :generate_secret_number

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
    def initialize(guesses_allowed, set_of_numbers)
      @guesses_allowed = guesses_allowed || 3
      @current_guess_count = 0
      @player = Player.new()
      @secret_number = SecretNumber.new(set_of_numbers)
      @current_guess = nil
    end

  
  

  # Print who made this wonderful program :-)
    def print_created_by
      first_name = "Daniel"
      last_name = "Tashman"
      puts "Created by " + first_name + " " + last_name
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
      print_created_by
    
      puts "\nWhat's your name, gorgeous?"
      #asks name

      @player_name = $stdin.gets.chomp
      #assigns player name 

      puts "Hi, #{@player_name}! You have #{guesses_allowed} guesses to guess the Secret Number between 1 and 10"
      puts "\nPlease make your guess:"
      #asks for player input
  
      players_guess = $stdin.gets.chomp.to_i
      #pulls player guess from input

      while @current_guess_count < @guesses_allowed && !guess_correct?(@current_guess) do
        puts "\nYou have #{ guesses_left } guesses left!"
        puts "Please make your guess:"
        @current_guess = $stdin.gets.chomp.to_i
        increment_guess_count
      end

      unless guess_correct?(@current_guess)
      puts @@messages[:lose]
      puts "The secret number was #{@secret_number.secret_number}!"
      end
 
  end


	# This method checks if the player guessed the correct secret number. 
  # It shoudl print out if they guessed correctly or guessed too high or too low.
	# Use the `@@messages` Hash to display this feedback.
	# Also let the player know how many guesses they have left.
	# If the guess is correct, make sure to return true, otherwise return false.
  
  def guess_correct?(guess)
    if players_guess == nil
        return false
      #return a false value for booleann use later
    elsif @secret_number.secret_number == players_guess
      puts @@messages[:win]
      #winner!
      puts "You guessed in #{@current_guess_count} turns!"
      #counter result
        return true
        #return a true value
      exit
    elsif @secret_number.secret_number > players_guess
      puts @@messages[:too_low]
       #guess too low
      puts "\nYou have #{guesses_left} guesses left. Please try again."
      #reminder of remaining guesses
        return false
        #return a false value
    elsif @secret_number.secret_number < players_guess
      puts @@messages[:too_high]
       #guess too high
      puts "\nYou have #{guesses_left} guesses left. Please try again."
      #reminder of remaining guesses
         return false
        #return a false value
    end

  end


  # This method should increment every time the player guesses incorrectly.
    def increment_guess_count
      @current_guess_count += 1
    end


  # Helper method for printing information for the Player to the screen.
    def guesses_left
      @guesses_allowed - @current_guess_count
    end

end

