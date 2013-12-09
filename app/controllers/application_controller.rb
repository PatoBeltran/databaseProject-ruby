class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    if session[:type] == 1
      @current_user ||= User.find_by_sql("SELECT * FROM users WHERE u_id = #{session[:user_id]};")[0] if session[:user_id]
    else
      @current_user ||= Assistant.find_by_sql("SELECT * FROM assistants WHERE aid = #{session[:user_id]};")[0] if session[:user_id]
    end
  end

  def is_doctor
    current_user.instance_of?(User)
  end

  helper_method :current_user, :is_doctor

  def has_to_authenticate
    redirect_to login_url, alert: "Not authorized" if current_user.nil?
  end

  def just_doctor
    redirect_to pacientes_url, alert: "Not authorized, you have to be a doctor" unless is_doctor
  end
end
