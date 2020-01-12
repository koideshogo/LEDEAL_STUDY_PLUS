Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :posts do
  end
  resources :manufacturers do
  end
end
