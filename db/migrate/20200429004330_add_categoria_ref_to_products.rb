class AddCategoriaRefToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :categoria, integer: false, foreign_key: true
  end
end
