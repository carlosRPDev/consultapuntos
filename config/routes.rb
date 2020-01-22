Rails.application.routes.draw do
  root 'welcome#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
