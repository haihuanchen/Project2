Rails.application.routes.draw do
  resources :investments
  resources :reviews
  resources :stocks
  resources :portfolios
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
