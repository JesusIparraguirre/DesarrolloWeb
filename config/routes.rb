Rails.application.routes.draw do
  devise_for :users
  resources:productos
  get 'login/index', as: 'login'
  get 'productos/index'
  get 'productos/show'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  
  root 'productos#index'
end
