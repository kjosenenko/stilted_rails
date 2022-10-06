Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  resources :messages, only: [:new, :create]
  resources :music, only: [:index]
  # resources :shows, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :shows, only: [:index]
  resources :merch, only: [:index]
end
