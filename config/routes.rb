Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :portfolios
  resources :stocks, only: [:new, :create]
  resources :investments

  post 'reviews/new', to: 'reviews#new'

  # get "/login", to: "sessions#new"
  # post "/login", to: "sessions#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
