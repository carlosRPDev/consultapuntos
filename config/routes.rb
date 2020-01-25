Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :points

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # resources :users, only: [:new, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'sessions#new'
end
