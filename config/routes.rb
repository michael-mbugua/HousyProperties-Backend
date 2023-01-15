Rails.application.routes.draw do
  resources :housecomplains
  resources :admins
  resources :payments
  resources :tenants 
  resources :properties do
    resources :tenants, only: [:show,:index]
  end
  post '/login', to: 'adminauth#create'
  post '/admin/login',to: 'auth#create'
  get '/profile', to: 'tenants#profile'


end
