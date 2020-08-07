class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

  def set_search
    @search = Post.ransack(params[:q])
    @posts_search = @search.result.page(params[:page]).per(6).order(created_at: :DESC)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name staff_num email])
  end

  def after_sign_in_path_for(_resource)
    root_path
  end

  def after_sign_out_path_for(_resource)
    root_path
  end
end
