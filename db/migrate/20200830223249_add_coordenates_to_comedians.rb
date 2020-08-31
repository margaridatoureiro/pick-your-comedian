class AddCoordenatesToComedians < ActiveRecord::Migration[6.0]
  def change
    add_column :comedians, :latitude, :float
    add_column :comedians, :longitude, :float
  end
end
