class Users < ActiveRecord::Base
  attr_accessible :age, :email, :first_name, :last_name
end



def is_teen?
	if @users.age < 19 && @users.age > 12
		return true
		last_name << "*"
		#append each instance of last_name with "*" if return = true
		#or do we use is_teen?.map { |last_name| @last_name + "*" } 
	end
end

def has_long_name?
	@name = @users.first_name.length + @users.last_name.length
	#add the character lengths of users first_name and last_name
	if @name > 10
		return true
		#if greater than 10, return true
	end
end

def all_long_name?
	@all_long_name? = Array.new(has_long_name?)
	#pull the 'true' results from has_long_name? and put them into a new array
	return @all_long_name?	
	#return that array
	end
	
end