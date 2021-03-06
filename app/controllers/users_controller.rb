class UsersController < ApplicationController

  before_action :check_logged, except: [:new, :create]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to root_url

    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
        redirect_to root_url
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end

  def check_logged
    unless logged_in?
      flash[:danger] = "Not logged"
      redirect_to root_url
    end
  end

end
