class UsersController < ApplicationController

  before_filter :authenticate_user

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    render "new"
  end

  def update
  end

  def edit
  end

  def index
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name, :gateway, :gateway_type, :password, :password_confirmation)
  end
end
