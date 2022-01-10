class ApplicationController < ActionController::Base
  include ErrorHandling

  helper_method :current_user, :logged_in?

  # Get user if exist id in session
  # @return [User | nil]
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id].present?
  end

  # Check if log in user
  # @return [Boolean]
  def logged_in?
    current_user.present?
  end

end
