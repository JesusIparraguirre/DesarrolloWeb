class ProductosController < ApplicationController
    def index
        @productos = Product.all
    end
    #GET /productos/:id
    def show
        @producto = Product.find(params[:id])
    end
end
    