Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  resources :contact, only: [:index]
  resources :music, only: [:index]
  resources :shows, only: [:index]
  resources :merch, only: [:index]
end
