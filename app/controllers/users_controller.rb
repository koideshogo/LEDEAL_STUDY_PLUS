class UsersController < ApplicationController
  before_action :sign_in_user
  before_action :set_categories, only: %i[show]
  def show
    @user = User.find(current_user.id)
    @out_puts = Output.where(user_id: current_user.id).page(params[:page]).per(10)
    post_ids = @out_puts.map(&:post_id)
    @posts = []
    post_ids.each do |post_id|
      post = Post.where("id= #{post_id}")
      @posts << post
      @post = @posts&.flatten
    end
  end

  private

  def set_categories
    @categories = Category.all
  end
end
