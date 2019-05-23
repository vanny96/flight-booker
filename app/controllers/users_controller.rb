class UsersController < ApplicationController
  include SessionsHelper

  before_action :check_user, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new params_for_user
    if @user.save
      flash[:success] = "Correctly signed up"
      redirect_to @user
    else
      render :new
    end
  end

  def show
  end

  private
  def check_user
    @user = current_user
    unless @user == User.find_by(id: params[:id])
      flash[:allert] = "You do not have the permission to access this page"
      redirect_to login_path
    end
  end

  def params_for_user
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
