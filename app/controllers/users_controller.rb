class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if user.save
      session[:user_id] = user.id
      flash[:success] = "You just made a new user"
      redirect_to '/products'
    else
      flash[:warning] = "Invalid email or password"
    end
  end
end
