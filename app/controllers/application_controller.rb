class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_current_user
    User.current = current_user
  end

  protected
  def authenticate_user!
    if !user_signed_in?
      redirect_to login_path
    end
  end
end
