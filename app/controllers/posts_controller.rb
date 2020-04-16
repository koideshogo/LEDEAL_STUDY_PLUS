class PostsController < ApplicationController
  before_action :sign_in_user
  before_action :set_category, only:[:new, :create]
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    url = @post.youtube_url
    url = url.last(11)
    @post.youtube_url = url
    @category = Category.find("#{@post.category_id}")
    respond_to do|format|
      if @post.save
        format.html { redirect_to @post, notice:'投稿が完了しました', class:'notice'}
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end

  def edit
  end
end

private
  def post_params
    params.require(:post).permit(:title, :body, :youtube_url, :category_id)
  end

  def sign_in_user
    redirect_to new_user_session_path unless signed_in?
  end

  def set_category
    @mainCategory = Category.where(ancestry: '1')
  end