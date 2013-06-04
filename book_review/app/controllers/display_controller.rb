class DisplayController < ApplicationController
  def display_users
  	@users = Users.all
  end

  def display_reviews
  	@reviews = Review.all
  end

  def display_books
  	@book = Books.all
  end



end
