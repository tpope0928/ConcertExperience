Rails.application.routes.draw do
  
  root 'users#new'

  resources :artists
  resources :concerts
  resources :experiences
  resources :users, only: [:new, :create, :destroy, :show, :index]

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
