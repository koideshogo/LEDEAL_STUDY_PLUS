class MainsController < ApplicationController
  def index
    @post = Post.all
  end

end
