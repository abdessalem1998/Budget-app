Rails.application.routes.draw do
  devise_for :users
  resources :spendings
  resources :types
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "types#index"
end
