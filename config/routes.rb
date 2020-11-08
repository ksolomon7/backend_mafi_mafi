Rails.application.routes.draw do
  # resources :orders
  resources :products
  resources :categories
  resources :carts
  # resources :users

  get '/keep_logged_in', to: "users#keep_logged_in"
  post '/login', to: "users#index"

  post '/orders', to:  "orders#create"
  delete '/orders/:id', to: "orders#destroy"
  
  patch '/carts/:id/new_order', to: "carts#new_order"
  
  post '/charges', to:"charges#create"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
