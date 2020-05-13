class OutputsController < ApplicationController
  before_action :sign_in_user
  before_action :set_categories, only: %i[show create]

  def index
  end

  def new
    @out_put = Output.new
  end

  def create
    @out_put = Output.new(out_put_params)
    @out_put.user = current_user
    respond_to do |format|
      if @out_put.save
        format.html { redirect_to @out_put, notice: '投稿が完了しました', class: 'notice'}
        format.json { render :show, status: :created, location: @out_put }
      else
        @post = Post.find_by(id: "#{@out_put.post_id}")
        @category = Category.find_by(id: "#{@post.category2}")
        @like = Like.new
        format.html { redirect_to @post, notice: '既に投稿しているか、入力されていない項目があります', class: 'notice'}
        format.json { render json: @out_put.errors, status: :unprocessable_entity}
      end
    end
  end

  def show
    @out_put = Output.find(params[:id])
    @post = Post.find_by(id: "#{@out_put.post_id}")
    @category = Category.find_by(id: "#{@post.category2}")
  end

  def edit
  end

  private

  def out_put_params
    params.permit(:body, :salon_name, :user_id, :post_id)
  end

  def set_categories
    @categories = Category.all
  end
end
