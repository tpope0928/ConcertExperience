Rails.application.routes.draw do
  root "sessions#home"
  
  get '/signup'  =>  'users#new'
  post '/signup' => 'users#create'

  #login route
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  #logout route
  delete '/logout' => 'sessions#destroy'



  resources :artists
  resources :concerts
  resources :experiences
  resources :users, only: [:new, :create, :destroy, :show, :index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
