class SessionsController < ApplicationController
  def new

  end

  def create
    password = params[:session][:password]
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(password)
      flash[:success] = 'Welcome'
      log_in(user)
      redirect_to root_url
    else
      flash[:danger] = 'Email or password are incorrect'
      render 'new'
    end
  end

  def destroy
    #logout
    if logged_in?
      logout
    end
    redirect_to root_url

  end
end
