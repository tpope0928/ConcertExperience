Rails.application.routes.draw do
  
  get '/signup' =>  'users#new'
  post '/signup' => 'users#create'


  resources :artists
  resources :concerts
  resources :experiences
  resources :users, only: [:new, :create, :destroy, :show, :index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
