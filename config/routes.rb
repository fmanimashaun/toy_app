Rails.application.routes.draw do
  resources :microposts
  resources :users

  # Defines the root path route ("/")
  root 'users#index'
end
