class ApplicationController < ActionController::Base
  protect_from_forgery
  #force_ssl
  before_filter :require_login
  helper_method :current_user

  protected

  private
  def require_login
    redirect_to root_url if current_user.nil?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
