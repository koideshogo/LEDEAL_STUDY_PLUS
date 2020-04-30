class UsersController < ApplicationController
  before_action :sign_in_user
  def show
    @user = User.find(current_user.id)
  end
end
