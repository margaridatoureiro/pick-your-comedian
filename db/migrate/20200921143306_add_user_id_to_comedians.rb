class AddUserIdToComedians < ActiveRecord::Migration[6.0]
  def change
    add_reference :comedians, :user, index: true
    add_foreign_key :comedians, :users
  end
end
