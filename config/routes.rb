Rails.application.routes.draw do
  resources :contacts
  resources :housecomplains
  resources :admins
  resources :payments
  resources :tenants 
  resources :properties do
    resources :tenants, only: [:show,:index]
  end
  post '/tenants/login', to: 'auth#create'
  post '/admin/login',to:  'adminauth#create'
  get '/profile', to: 'tenants#profile'
  post '/property_search',to: 'properties#search'


end
