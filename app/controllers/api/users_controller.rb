class Api::UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
  end

  def create
    @user = User.new(username: params[:username])
    @user.password = params[:password]
    if @user.save
      login(@user)
    # else
    #   flash[:errors] << @user.errors.full_messages
    end
    render "/api/users/show"
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
