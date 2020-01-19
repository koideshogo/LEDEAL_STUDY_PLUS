Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :manufacturers 
  resources :posts
end
