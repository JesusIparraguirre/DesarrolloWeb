Rails.application.routes.draw do
  devise_for :users
  resources:products
  resources:categorias
  resources:carritos
  
  get 'login/index', as: 'login'

  get 'productos/index'
  get 'productos/show'

  get 'carritos/index'

  get 'categorias/show'

  #get 'delete carrito', to 'carrito#destroy'

  get 'administrador/index'
  get 'administrador/stock'
  get 'administrador/producto'
  get 'administrador/codigo'

  get 'shared/perfil'
  get 'shared/compras'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.
  
  root 'products#index'
end
