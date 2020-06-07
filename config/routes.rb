# frozen_string_literal: true

Rails.application.routes.draw do
  root 'mains#index'
  get 'mains/index'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # 管理者権限path
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :restaurants, only: %i[index show]
  namespace :admin do
    resources :restaurants, only: %i[index new create show edit destroy]
  end

  # manufactuerのパス
  resources :manufacturers, only: %i[index new create edit destroy]
  get 'manufacturers/:id', to: 'manufacturers#show', as: 'manufacturer_show'

  # postのパス
  resources :posts do
    resources :likes, only: %i[create destroy]
  end
  get 'search', to: 'posts#search', as: 'search'
  namespace :api, format: 'json' do
    # categoryセレクトボックスで使用
    resources :categories, only: [:index]
  end
  # ゲストログイン
  resources :guests, only: [:create], as: 'guest_login'
  # マイページ
  resources :users, only: [:show], as: 'mypage'

  # outputのパス
  resources :outputs, only: %i[index new create edit show]
end
