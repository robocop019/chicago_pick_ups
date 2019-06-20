class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :content
      t.integer :sender_id
      t.integer :recipient_id
      t.boolean :hidden, default: false

      t.timestamps
    end
  end
end
