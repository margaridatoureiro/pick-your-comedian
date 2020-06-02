class ChangeDataTypeAverageRatingToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :comedians, :average_rating, :float
  end
end
