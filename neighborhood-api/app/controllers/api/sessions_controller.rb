class Api::SessionsController < ApplicationController

  def create
  end

  def destroy
    @user = current_user
    if @user
      logout
      render json: {}
  end

end
