class CreateCarritos < ActiveRecord::Migration[6.0]
  def change
    create_table :carritos do |t|
      t.text :nombre
      t.float :precio
      t.integer :cantidad
      t.float :subtotal

      t.timestamps
    end
  end
end
