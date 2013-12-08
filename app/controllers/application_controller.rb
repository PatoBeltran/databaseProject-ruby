class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find_by_sql("SELECT * FROM users WHERE u_id = #{session[:user_id]}")[0] if session[:user_id]
    @current_user ||= Assistant.find_by_sql("SELECT * FROM users WHERE aid = #{session[:user_id]}")[0] if session[:user_id]
  end

  def is_doctor
    current_user.instance_of?(User)
  end

  helper_method :current_user, :is_doctor

  def authorize
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end
end
