class Api::SessionsController < ApplicationController

  def create
  end

  def destroy
    @user = current_user
    if @user
      logout
      render json: {}
    else
      render json: ["There is no one signed in"], status: 404
      # 404 server could not find what was requested
    end
  end

end
