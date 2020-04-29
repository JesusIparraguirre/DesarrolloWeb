class CategoriasController < ApplicationController
    def index
        @categoria = Categorium.find(params[:id])
        #@productos = Product.id(params[:id])
        @productos = Product.where(id:params[:id])
        @categorias = Categorium.all
        @var = "/"
    end
    def show
        @categoria = Categorium.find(params[:id])
        #@productos = Product.id(params[:id])
        @productos = Product.where(id:params[:id])
        @categorias = Categorium.all
        @var = "/"
    end
end
