class OrdersController < ApplicationController
    def create
        @order = Order.new(nombre: params[:order][:nombre],
                                precio: params[:order][:precio],
                                cantidad: params[:order][:cantidad],
                                user_id: params[:order][:user_id],
                                fecha: params[:order][:time])
        @order.save 
        redirect_to @order
    end
    def show
        @ordenes=Order.where(user_id:current_user.id)
    end
end
