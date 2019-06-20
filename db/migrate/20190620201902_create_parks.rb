class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.integer :api_ref
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
