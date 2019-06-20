class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.text :bio
      t.string :avatar_url
      t.date :date_of_birth
      t.string :location
      t.boolean :admin

      t.timestamps
    end
  end
end
