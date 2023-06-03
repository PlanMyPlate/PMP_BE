class UsersController < ApplicationController 
  def create 
    user = User.new(user_params)
    if user.save 
      render json: UserSerializer.new(user), status: 201
    else 
      render json: ErrorSerializer.taken_email, status: 400 
    end 
  end


  private
  def user_params
    params.permit(:name, :email, :password)
  end
end