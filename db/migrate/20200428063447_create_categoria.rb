class CreateCategoria < ActiveRecord::Migration[6.0]
  def change
    create_table :categoria do |t|
      t.text :nombre
      t.integer :codigo

      t.timestamps
    end
  end
end
