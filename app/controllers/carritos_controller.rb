class CarritosController < ApplicationController
    def index
        @carritos = Carrito.all
    end
    def show
        if user_signed_in?
            @usuario = current_user.id
            @carritos = Carrito.where(user_id:current_user.id)
        else
            @usuario = 1
            @carritos = Carrito.where(user_id:1)
        end
        
    end
    def create
        a = params[:carrito][:cantidad].to_f 
        b = params[:carrito][:precio]
        @carrito = Carrito.new(nombre: params[:carrito][:nombre],
                                precio: params[:carrito][:precio],
                                cantidad: params[:carrito][:cantidad],
                                user_id: params[:carrito][:user])

        @carrito.save 
        redirect_to @carrito
    end
end
