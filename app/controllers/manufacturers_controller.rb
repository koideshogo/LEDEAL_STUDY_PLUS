class ManufacturersController < ApplicationController
  before_action :sign_in_user
  before_action :set_category, only:[:index, :show]

  def index
  end

  def show
  end

  def sign_in_user
    redirect_to new_user_session_path unless signed_in?
  end

  private

  def set_category
    @categories = Category.all
  end
end