class UsersController < ApplicationController
  before_action :sign_in_user
  before_action :set_categories, only: %i[show]
  def show
    @user = User.find(current_user.id)
    @out_puts = Output.where(user_id: current_user.id)
    @out_puts.each do |out_put|
    @posts = Post.where("id= #{out_put.post_id}")

    end
  end

  private

  def set_categories
    @categories = Category.all
  end

end
