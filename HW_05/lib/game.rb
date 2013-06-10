class Game
  attr_reader :guesses_allowed, :current_guess_count, :current_guess

  @@messages = { win: "You won!",
                 lose:  "You lost! :-(",
                 too_low: "Your guess was too low!",
                 too_high: "Your guess was too high!" }

  def initialize(guesses_allowed, set_of_numbers)
    @guesses_allowed = guesses_allowed || 3
    #sets the total # of guesses
    @current_guess_count = 0
    @player = Player.new()
    @secret_number = SecretNumber.new(set_of_numbers)
    @current_guess = nil
    #sets the current gues to nil
  end

  # Print who made this wonderful program :-)
  def print_created_by
    first_name = "Dan"
    last_name = "Tashman"
    puts "Created by " + first_name + " " + last_name
  end


  def start_game
    puts "\nWelcome to the Secret Number Game!"
    print_created_by

    puts "\nWhat's your name gorgeous?"
    @player.name = $stdin.gets.chomp

    puts "Hi, #{@player.name}! You have #{@guesses_allowed} guesses to guess the Secret Number between #{@secret_number.set_of_numbers.to_s}"
    #informs player of game criteria &  # of availabel guesses
    
    while @current_guess_count < @guesses_allowed && !guess_correct?(@current_guess) do
      #while the current guess count < 3 AND the user hasnt guessed correct, do the following...
      puts "\nYou have #{ guesses_left } guesses left!"
      puts "Please make your guess:"
      @current_guess = $stdin.gets.chomp.to_i
      #takes the current input and assigns it as a guess
      increment_guess_count
      #add incremental guess count
    end

    unless guess_correct?(@current_guess)
      puts @@messages[:lose]
      #player lose
      puts "The secret number was #{@secret_number.secret_number}!"
    end
  end


  def guess_correct?(guess)
    if guess.nil?
      return false
      #if the guess is not a number, return false (boolean)
    elsif @secret_number.secret_number == guess
      puts @@messages[:win]
      puts "You guessed in #{@current_guess_count} turns!"
      return true
      #player wins!
    elsif @secret_number.secret_number > guess
      puts @@messages[:too_low]
      return false
      #player guessed too low
    elsif @secret_number.secret_number < guess
      puts @@messages[:too_high]
      return false
      #Player guesses too high
    else
      return false
    end
  end

  # Increment the current guess count! We don't want the guess count to
  # ever decrement or be set outside of this Class so we use this method
  # to increment our Player's guess count.
  def increment_guess_count
    @current_guess_count += 1
  end

  # Helper method for printing information for the Player to the screen.
  def guesses_left
    @guesses_allowed - @current_guess_count
  end
end
