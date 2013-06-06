class SecretNumber
	  attr_reader :set_of_numbers, :secret_number
	  #imports set of numbers, secret number from initialize method (read only)

#   *** NOTE ***  
#	Make sure that all the instance variables in this class may only be READ and not WRITTEN to. 
#  		(hint: Review ruby documentation for attr_reader).



	# Initializes the available range of numbers the Player can guess. (e.g. guess a number between 1 and 20).
	# 	(You should default the range of numbers to 1 - 10 if parameter is null.)
	# Initializes the secret number
	def initialize(set_of_numbers)
		@set_of_numbers = [1..10].to_a
		 @secret_number = generate_secret_number
		
	
  	end

	#  Randomly generates a number from the range of numbers. Guessing this number wins the game.
	#  Look up "private methods" in the ruby docs.
	private 

	def generate_secret_number(initialize)
		@generate_secret_number = set_of_numbers.to_a.sample
		#pick a random number from the Array 'set_of_numbers'

  	end
end


