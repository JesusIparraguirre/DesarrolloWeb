class AddUserRefToCarritos < ActiveRecord::Migration[6.0]
  def change
    add_reference :carritos, :user, integer: false, foreign_key: true
  end
end
