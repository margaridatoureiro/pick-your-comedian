class AddAddressToComedians < ActiveRecord::Migration[6.0]
  def change
    add_column :comedians, :address, :string
  end
end
