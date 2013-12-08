class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_sql("SELECT * FROM users WHERE mail = '#{params[:mail]}'")[0]
    assistant = Assistant.find_by_sql("SELECT * FROM assistants WHERE mail = '#{params[:mail]}'")[0]

    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.u_id
      redirect_to root_url, notice: "Logged in!"
    elsif assistant.present? && assistant.authenticate(params[:password])
      session[:user_id] = user.a_id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
