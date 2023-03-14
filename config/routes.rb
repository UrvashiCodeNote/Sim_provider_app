Rails.application.routes.draw do
  devise_for :service_providers
  root to: "home#index" 
  resources :service_providers
  resources :contact_books
  resources :customer
  resources :address
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
