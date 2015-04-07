Rails.application.routes.draw do
  resources :accounts
  resources :addresses
  resources :banks
  resources :users
  root to: 'status#index'
end
