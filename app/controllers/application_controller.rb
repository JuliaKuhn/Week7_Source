class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :is_logged_in?
  before_action :current_user

  def current_user
    if is_logged_in?
      @current_user = (User.find(session[:user_id]) if session[:user_id].present?)

      @current_user
    end
  end

  def is_logged_in?
    session[:user_id].present?
  end
end
