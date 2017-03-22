Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :episode_guests
  resources :users
  get '/users/new', to: "users#new"
  post '/users/:id', to: "users#create"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
end
