class AddCelularToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :celular, :string
  end
end
