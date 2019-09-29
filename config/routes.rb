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
  resources :concerts do
    resources :experiences, only: [:new, :create, :index]
  end
  resources :experiences
  resources :users do
    resources :concerts, only: [:new, :create, :index]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
