class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :contributor_id
      t.string :name
      t.integer :rating
      t.string :instructions

      t.timestamps
    end
  end
end
