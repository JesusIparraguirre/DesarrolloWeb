Rails.application.routes.draw do
  devise_for :users
  resources:productos
  get 'login/index', as: 'login'

  get 'productos/index'
  get 'productos/show'

  get 'carrito/index'

  get 'administrador/index'
  get 'administrador/stock'
  get 'administrador/producto'
  get 'administrador/codigo'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  
  root 'productos#index'
end
