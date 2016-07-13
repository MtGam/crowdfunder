class UsersController < ApplicationController
  def new
    @users = User.new
  end

  def create
    @users = User.new(user_params)
  end 
end
