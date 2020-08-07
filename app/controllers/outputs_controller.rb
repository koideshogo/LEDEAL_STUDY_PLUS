# frozen_string_literal: true

class OutputsController < ApplicationController
  before_action :sign_in_user
  before_action :set_categories, only: %i[show create]

  def index; end

  def new
    @out_put = Output.new
  end

  def create
    @out_put = Output.new(out_put_params)
    @out_put.user = current_user
      if @out_put.save
        flash[:notice] = 'アウトプットが完了しました'
        redirect_to @out_put
      else
        @post = Post.find_by(id: @out_put.post_id.to_s)
        @category = Category.find_by(id: @post.category2.to_s)
        @like = Like.new
        flash.now[:notice]  = '既に投稿しているか、入力されていない項目があります'
        render @post
      end
  end

  def show
    @out_put = Output.find(params[:id])
    @post = Post.find_by(id: @out_put.post_id.to_s)
    @category = Category.find_by(id: @post.category2.to_s)
  end

  def edit; end

  private

  def out_put_params
    params.permit(:body, :salon_name, :user_id, :post_id)
  end

  def set_categories
    @categories = Category.all
  end
end
