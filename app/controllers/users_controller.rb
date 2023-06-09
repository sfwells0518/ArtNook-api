class UsersController < ApplicationController
  # New User Sign Up
  def create
    user = User.new(
      full_name: params[:full_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      user_image_url: params[:user_image_url],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request 
    end 
  end

  # Remove User
  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: { message: "User has been successfully removed" }
  end
end
