class ApplicationController < ActionController::Base
  protect_from_forgery
  #force_ssl
  before_filter :require_login
  helper_method :current_user

  protected

  private
  def require_login
    if current_user.nil?
      flash[:notice] = "hey! you have to sign in first :)"
      redirect_to root_url
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
