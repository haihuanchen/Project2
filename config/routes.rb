Rails.application.routes.draw do
  resources :reviews
  resources :portfolios
  resources :stocks
  resources :investments
  resources :users do
    resources :portfolios
  end


  # get "/login", to: "sessions#new"
  # post "/login", to: "sessions#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
