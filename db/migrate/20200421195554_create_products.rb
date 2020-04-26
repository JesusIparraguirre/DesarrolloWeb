class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :nombre
      t.text :descripcion
      t.float :precio
      t.integer :stock
      t.text :urlimagen
      t.integer :categoria

      t.timestamps
    end
  end
end
