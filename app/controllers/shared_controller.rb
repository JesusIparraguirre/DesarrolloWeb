class SharedController < ApplicationController
    def perfil
        @usuario = User.where(id:current_user.id)
    end
end
