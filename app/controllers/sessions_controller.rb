class SessionsController < ApplicationController
  def new
  end

  def create
    @user = Runner.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      redirect_to root_path
    else
      render :new
    end
  end
end
