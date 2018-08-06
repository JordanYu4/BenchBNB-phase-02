class Api::SessionsController < ApplicationController

  def create
    @user = User.find_by_credentials(params[:username], params[:password])
    if @user
      login(@user)
      render "api/users/show"
    else
      flash[:errors] << "Invalid username and password"
    end
  end

  def destroy
    logout!
  end

end
