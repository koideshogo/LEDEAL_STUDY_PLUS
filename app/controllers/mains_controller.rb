# frozen_string_literal: true

class MainsController < ApplicationController
  def index
    @post = Post.all
  end
end
