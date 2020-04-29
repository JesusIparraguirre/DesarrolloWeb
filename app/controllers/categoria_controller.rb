class CategoriaController < ApplicationController
    def show
        @categoria = Categorium.find(params[:id])
        #@productos = Product.id(params[:id])
        @productos = Product.all
        @categorias = Categorium.all
    end
end
