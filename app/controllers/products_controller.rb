class ProductsController < ApplicationController
    def index
        @producto = Product.new
        @productos = Product.all
        @categorias = Categorium.all
        @carrito = Carrito.new
        @carritos = Carrito.all
    end
    #GET /productos/:id
    def show
        @producto = Product.find(params[:id])
    end
    def create
        @producto = Product.new(nombre: params[:product][:nombre],
                                    descripcion: params[:product][:descripcion],
                                    precio: params[:product][:precio],
                                    stock: params[:product][:stock],
                                    urlimagen: params[:product][:urlimagen],
                                    categoria: params[:product][:categoria])
        @producto.save 
        redirect_to @producto
    end
end
