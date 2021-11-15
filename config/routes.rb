Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :bookmarks
  resources :reviews
  resources :roles
  resources :actors
  resources :directors
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
