Rails.application.routes.draw do
  root 'sessions#login'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  
  get '/secret', to: 'secrets#show'
  
  resources :users
end
