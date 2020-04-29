class AddNombresToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nombres, :string
  end
end
