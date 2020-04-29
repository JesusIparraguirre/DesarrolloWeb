class SharedController < ApplicationController
    def perfil
        @usuario = User.all
    end
end
