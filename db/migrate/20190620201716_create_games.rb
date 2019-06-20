class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :park_id
      t.string :title
      t.text :description
      t.integer :sport
      t.integer :category
      t.datetime :start_time
      t.integer :min_participants
      t.integer :max_participants
      t.integer :max_age
      t.integer :organizer_id

      t.timestamps
    end
  end
end
