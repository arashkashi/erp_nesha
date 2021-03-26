class SessionsController < ApplicationController

  skip_before_action :application_before_action

  def new
  end

  def create
  	user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
  	session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end

  def changeToEN
    I18n.locale = :en
    redirect_to root_url, notice: "Changed to English"
  end

  def changeToFA
    I18n.locale = :fa
    redirect_to root_url, notice: "Changed to Persian"
  end
end
