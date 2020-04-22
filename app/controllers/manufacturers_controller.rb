# frozen_string_literal: true

class ManufacturersController < ApplicationController
  before_action :sign_in_user
  before_action :set_category, only: %i[index show]
  before_action :set_posts, only: %i[index show]
  def index
    @categories = Category.all
  end

  def show
    @posts = Post.all
    # @category_post = Category.eager_load({children: [{children: :posts}, :posts]}, :posts).where(category_id: 1..90)
    @post = Post.where(category2: params[:id])
  end

  def sign_in_user
    redirect_to new_user_session_path unless signed_in?
    end
  end

private
def set_category
  @categories = Category.all
end

def set_posts
  @posts = Post.all
end
