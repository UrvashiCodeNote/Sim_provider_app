Rails.application.routes.draw do
  devise_for :service_providers
  root to: "home#index" 
  
  resources :service_providers, only: [:create, :show, :new, :index]
  resources :contact_books
  # resources :customers
  resources :address

    # post '/service_providers/add', to: 'service_providers#customer_create'
    # get '/service_providers/new', to: 'service_providers#customer_new'
  #  delete '/service_providers/:id', to: 'service_providers#customer_destroy'
  #  get '/service_providers/:id', to: 'service_providers#customer_show'
  #  patch '/service_providers/:id', to: 'service_providers#customer_update'





  # get '/users/current_user_check', to: 'users#current_user_check'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
