class AddAverageRatingtoComedians < ActiveRecord::Migration[6.0]
  def change
    add_column :comedians, :average_rating, :integer
  end
end
