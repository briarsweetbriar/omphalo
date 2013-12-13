class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.text :description, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
    add_index :thoughts, :user_id
  end
end
