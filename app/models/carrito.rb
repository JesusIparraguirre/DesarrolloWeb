class Carrito < ApplicationRecord
    validates :cantidad, :numericality => { :greater_than_or_equal_to => 1 }
end
