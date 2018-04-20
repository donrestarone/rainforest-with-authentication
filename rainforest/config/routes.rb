Rails.application.routes.draw do
  

  resource :users, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]

  resources :products, only: :index

  root 'products#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
