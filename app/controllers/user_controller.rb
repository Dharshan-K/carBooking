class UserController < ApplicationController
  def index
  end
  def getAllUsers
    @allUsers = User.all()
    render json: @allUsers
  end

  def getUser
    userId = params[:id].to_i
    puts userId
    puts userId.class
    @user = User.find_by(userID: userId)
    render json: @user
  end
end
