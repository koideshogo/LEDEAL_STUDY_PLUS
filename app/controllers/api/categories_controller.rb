class Api::CategoriesController < ApplicationController  
  def index
    @child_categories = Category.where(id: 10..90)
    @child_categories = Category.where(category_id: params[:keyword])
  end
end
