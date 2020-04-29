class AdministradorController < ApplicationController
    def stock
        @productos = Product.all
    end
end
