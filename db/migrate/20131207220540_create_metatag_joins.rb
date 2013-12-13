class CreateMetatagJoins < ActiveRecord::Migration
  def change
    create_table :metatag_joins do |t|
      t.integer :thought_id, null: false
      t.integer :metatag_id, null: false
    end
    add_index :metatag_joins, [:thought_id, :metatag_id], :unique => true
  end
end
