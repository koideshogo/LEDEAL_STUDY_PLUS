# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :sign_in_user
  before_action :set_category, only: %i[index new create show]
  before_action :set_post, only: %i[show edit delete]
  before_action :set_categories, only: %i[show]

  def index
    @post = Post.all
    # @like = Like.all
  end

  def new
    @post = Post.new
    @parent_categories = Category.where('id < 10')
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    url = @post.youtube_url
    url = url.last(11)
    @post.youtube_url = url
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: '投稿が完了しました', class: 'notice' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @post = Post.find(params[:id])
    @category = Category.find_by(id: "#{@post.category2}")
    @like = Like.new
  end

  def edit; end
end

private
def post_params
  params.require(:post).permit(:title, :body, :youtube_url, :category_id, :category1, :category2, :release_date, :user)
end

def sign_in_user
  redirect_to new_user_session_path unless signed_in?
end

def set_category
  @mainCategory = Category.where(category_id: nil)
end

def set_post
  @posts = Post.find(params[:id])
end

def set_categories
  @categories = Category.all
end
