Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'welcome#index'
  resources :manufacturers
  get 'manufacturers/:id', to: 'manufacturers#show'
  resources :posts
end
