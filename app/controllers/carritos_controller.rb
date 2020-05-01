class CarritosController < ApplicationController
    def index
        if user_signed_in?
            @usuario = current_user.id
            @carritos = Carrito.where(user_id:current_user.id)
            @orden = Order.new
            @compra = Carrito.delete(user_id:current_user.id)
        else
            @carritos = nil
            @compra = nil
            @usuario = nil
        end
    end
    def show
        if user_signed_in?
            @usuario = current_user.id
            @carritos = Carrito.where(user_id:current_user.id)
            @compra = Carrito.delete(user_id:current_user.id)
            @orden = Order.new
        else
            @orden = Order.new
            @compra = nil
            @usuario = nil
        end
        
    end
    def destroy
        @carrito=Carrito.find(params[:id])
        @carros=Carrito.all
        @carrito.destroy
        redirect_to carritos_path   
    end
    def create
        a=params[:carrito][:id]
        s=params[:carrito][:cantidad]
        @var = Product.where(id:a)
        @var.each do |product| 
            @b = product.stock
        end
        k=200
        if @b < s.to_i
            render:stock
        else
        @carrito = Carrito.new(nombre: params[:carrito][:nombre],
                                precio: params[:carrito][:precio],
                                cantidad: params[:carrito][:cantidad],
                                user_id: params[:carrito][:user])
        #EDITAR STOCK DE PRODUCTO LUEGO DE AÑADIR AL CARRITO
            if @carrito.save 
                redirect_to @carrito
            else 
                render :error
            end
        end
    end
end
