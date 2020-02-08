Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :manufacturers
  get 'manufacturers/:id', to: 'manufacturers#show'
  resources :posts
end
