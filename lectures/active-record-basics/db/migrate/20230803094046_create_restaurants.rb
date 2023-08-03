class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table(:restaurants) do |t|
      # COLUMNS
      # NO NEED TO ADD ID
      # t.data_type :column_name
      t.string :name
      t.string :address

      t.timestamps # create two columns: CREATED_AT && UPDATED_AT
    end
  end
end
