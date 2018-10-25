class ApplicationController < ActionController::API

  def login(user)
    session[:session_token] = user.reset_session_token!
    @current_user = user
  end

  def current_user
  end

end
