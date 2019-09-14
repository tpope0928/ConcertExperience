Rails.application.routes.draw do
  resources :sessions
  resources :artists
  resources :concerts
  resources :experiences
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
