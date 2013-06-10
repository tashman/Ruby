class SecretNumber
  attr_reader :set_of_numbers, :secret_number

  def initialize(set_of_numbers)
    @set_of_numbers = set_of_numbers || (1..10)
    #sets the array as a number from 1-10
    @secret_number = generate_secret_number

  end

private

  def generate_secret_number
    @secret_number = set_of_numbers.to_a.sample
    #selects a random numbe from the array
  end
end
