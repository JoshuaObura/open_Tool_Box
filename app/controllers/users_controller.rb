class UsersController < ApplicationController
  def show
    @user = current_user
    redirect_to root_path
  end
end
