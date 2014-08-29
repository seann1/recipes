class CreateHashJoins < ActiveRecord::Migration
  def change
    create_table :hash_joins do |t|
      t.integer :recipe_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
