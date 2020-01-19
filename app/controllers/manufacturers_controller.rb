class ManufacturersController < ApplicationController
  before_action :sign_in_user

  def index
    @manufacturers = Manufacturer.all

  end

  def new
    @manufacturer = Manufacturer.new
  end
  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
    respond_to do|format|
      if @manufacturer.save
        format.html { redirect_to @manufacturer, notice: '登録が完了しました',class:'notice' }
        format.json { render :show, status: :created, location: @manufacturer }
      else
        format.html { render :new }
        format.json { render json: @manufacturer.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
  end

  def sign_in_user
    redirect_to new_user_session_path unless signed_in?
  end
  

  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :user, :image)
  end
end