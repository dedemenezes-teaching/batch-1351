class AddRatingToRestaurants < ActiveRecord::Migration[7.0]
  def change
    # SYNTAX
    # add_column(:table_name, :column_name, :column_data_type_in_ruby)
    # add_column(:restaurants, :rating, :integer, {default: 0, null: false})
    add_column :restaurants, :rating, :integer, default: 0, null: false
  end
end
