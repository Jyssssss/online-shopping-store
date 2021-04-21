Rails.application.routes.draw do
  get 'first/second'
  get 'first/third'
  get "access/new", as: "login"
  post "access/create", as: "logon"
  delete "access/destroy", as: "logout"
  get "admin/index"
  get "admin", :to => "admin#index"
  get "login", :to => "access#new"
  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  root "shopper#index", as: "shopper"
  get "shopper/index"
  get "shopper/show"
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
