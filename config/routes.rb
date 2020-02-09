Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :restaurants, only: [:index, :show] 
  namespace :admin do
    resources :restaurants, only: [:index, :new, :create, :show,  :edit, :destroy]
  end
  devise_for :users
  root 'welcome#index'
  resources :manufacturers
  get 'manufacturers/:id', to: 'manufacturers#show'
  resources :posts
end
