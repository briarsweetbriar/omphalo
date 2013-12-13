class CreateMetatags < ActiveRecord::Migration
  def change
    create_table :metatags do |t|
      t.string :name, null: false
    end
  end
end
