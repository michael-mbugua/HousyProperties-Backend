Rails.application.routes.draw do
  resources :housecomplains
  resources :admins
  resources :payments
  resources :tenants
  resources :properties
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
