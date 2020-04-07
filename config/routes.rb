Rails.application.routes.draw do
  root 'mains#index'
  get 'mains/index'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # 管理者権限path
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :restaurants, only: [:index, :show] 
  namespace :admin do
    resources :restaurants, only: [:index, :new, :create, :show,  :edit, :destroy]
  end
  resources :manufacturers
  get 'manufacturers/:id', to: 'manufacturers#show'
  resources :posts

  namespace :api, format: 'json' do
    #categoryセレクトボックス で使用
    resources :categories, only[:index]
  end
end
