class MainsController < ApplicationController
  def index
    @post = Post.order(created_at: :DESC).limit(6)
  end
end
