class AddRolToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :rol, :integer
  end
end
