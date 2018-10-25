class ApplicationController < ActionController::API

  def login(user)
    session[:session_token] = user.reset_session_token!
    @current_user = user
  end

# will return @current_user if it is defined, or it will find a user by the current session token

  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end


  def logged_in?
    !!current_user
  end

  def logout
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def require_login!
    redirect_to new_session_url unless logged_in?
  end
end
