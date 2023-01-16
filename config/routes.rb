Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/create'
  get 'password_resets/edit'
  get 'password_resets/update'
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
  get '/forgotpassword', to: 'password_resets#new'



end
