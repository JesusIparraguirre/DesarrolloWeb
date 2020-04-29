class CarritoController < ApplicationController
    def index
        @carrito = Carrito.all
    end
end
