class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :nombre
      t.float :precio
      t.integer :cantidad
      t.time :fecha
      t.integer :user_id

      t.timestamps
    end
  end
end
