class SessionsController < ApplicationController
  include SessionsHelper

  def new
  end

  def create
    user = User.find_by email: params[:session][:email]
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "Correctly logged in"
      log_in user
      redirect_to user
    else
      flash.now[:errors] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    logout
  end
end
