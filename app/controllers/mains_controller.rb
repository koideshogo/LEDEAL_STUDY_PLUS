# frozen_string_literal: true

class MainsController < ApplicationController
  def index
    @post = Post.order(created_at: :DESC).limit(6).offset(1)
  end
end
