Rails.application.routes.draw do
  get '/points', to: 'points#index'
  get '/points/new', to: 'points#new', as: 'new_point'
  post '/points', to: 'points#create'
  get '/points/:id', to: 'points#show'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # resources :users, only: [:new, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
