class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(cuenta: params[:cuenta])
    if user && user.authenticate(params[:password])
      sign_in(user)
      redirect_to root_path
    else
      render :new
    end
  end
end
