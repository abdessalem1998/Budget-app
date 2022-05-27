Rails.application.routes.draw do
  devise_for :users
  resources :spendings, only: %i[index new]
  resources :types, only: %i[index new]
  resources :users, only: %i[index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  unauthenticated do
    root "users#index"
  end

  authenticated :user do
    root "types#index" , :as => :my_page
  end
end
