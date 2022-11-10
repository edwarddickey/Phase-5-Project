Rails.application.routes.draw do
  resources :reviews
  resources :products
  resources :brands
  resources :users, only: [:show, :create]
  get '/hello', to: 'application#hello_world'

  post '/login', to: 'sessions#create'
  get '/authorized_user', to: 'users#show'
  delete '/logout', to: 'sessions#destroy'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
