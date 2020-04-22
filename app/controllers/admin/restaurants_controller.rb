# frozen_string_literal: true

class Admin::RestaurantsController < ApplicationController
  before_action :if_not_admin

  private

  def if_not_admin
    redirect_to posts_path unless current_user.admin?
  end
end
