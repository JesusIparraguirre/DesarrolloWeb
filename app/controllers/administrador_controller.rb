class AdministradorController < ApplicationController
    def stock
        @productos = Product.all
    end
    def producto
        @producto = Product.new
    end
    def create
        @producto = Product.new(nombre: params[:carrito][:nombre],
                                    marca: params[:carrito][:marca],
                                    descripcion: params[:carrito][:descripcion],
                                    precio: params[:carrito][:precio],
                                    tock: params[:carrito][:stock],
                                    codigo: params[:carrito][:codigo],
                                    urlimagen: params[:carrito][:urlimagen])
        @producto.save redirecto to @producto
    end
end
