# frozen_string_literal: true

class MainsController < ApplicationController
  def index
    @post = Post.order(created_at: :DESC)
  end
end
