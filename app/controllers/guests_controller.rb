# frozen_string_literal: true

class GuestsController < ApplicationController
  def create
    user = User.find_or_create_by!(name: 'testUser') do |user|
      user.name = SecureRandom.base58(10)
      user.password = SecureRandom.base58(20)
      user.staff_num = SecureRandom.random_number(10_000)
      user.admin = 1
      user.email = "testUser@#{user.name}"
    end
    sign_in user
    redirect_to root_url
    flash[:notice] = 'ゲストログインしました'
  end
end
