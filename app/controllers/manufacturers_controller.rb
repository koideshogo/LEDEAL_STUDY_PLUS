class ManufacturersController < ApplicationController
  before_action :sign_in_user
  
  def index
    render layout: 'nav'
  end

  def show
    render layout: 'nav'
  end

  def create
    render layout: 'nav'
  end

  def new
    render layout: 'nav'
    
  end


  def edit
  end

  def sign_in_user
    redirect_to new_user_session_path unless signed_in?
  end
end
