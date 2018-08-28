class PagesController < ApplicationController
  def home
    @users = User.all
    # @documents = Category.all
  end




end
