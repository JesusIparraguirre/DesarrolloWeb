class CarritoController < ApplicationController
    def index
        @carritos = Carrito.all
    end
end
