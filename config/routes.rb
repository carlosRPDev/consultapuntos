Rails.application.routes.draw do
  root 'points#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create]
  resources :points
  # resources :users, only: [:new, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
