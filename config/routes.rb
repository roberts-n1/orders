Rails.application.routes.draw do
  resources :employees
  resources :bicycles
  resources :orders
  root 'orders#index'
end
