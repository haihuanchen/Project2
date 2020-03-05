Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :portfolios
  resources :stocks, only: [:new, :create]
  resources :investments

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  # delete 'logout', to: "sessions#destroy", as "logout"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
