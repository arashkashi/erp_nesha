Rails.application.routes.draw do
  resources :raw_material_to_production_inputs
  resources :drivers
  resources :washer_inputs
  resources :washer_outputs
  resources :washer_types
  resources :truck_scale_outputs
  resources :raw_material_inputs
  resources :raw_material_types
  get 'stores/products', to: 'stores#products', as: 'store_products'
  get 'stores/raw_materials'
  get 'stores/washers'
  resources :pipe_store_outputs
  resources :pipe_store_inputs
  resources :order_items
  resources :orders
  resources :pipe_types
  resources :customers
  root 'home#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'english', to: 'sessions#changeToEN', as: 'change_to_en'
  get 'farsi', to: 'sessions#changeToFA', as: 'change_to_fa'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
