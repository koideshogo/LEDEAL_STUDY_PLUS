class UsersController < ApplicationController
  before_action :sign_in_user
  before_action :set_categories, only: %i[show]
  def show
    @user = User.find(current_user.id)
    @out_put = Output.where(user_id: current_user.id)
    @post_id = Output.find_by(user_id: current_user.id)
    @post = Post.where(id: "#{@post_id&.post_id}")
  end

  private

  def set_categories
    @categories = Category.all
  end

end
