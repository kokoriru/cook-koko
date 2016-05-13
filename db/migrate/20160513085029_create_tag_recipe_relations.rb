class CreateTagRecipeRelations < ActiveRecord::Migration
  def change
    create_table :tag_recipe_relations do |t|
      t.integer :tag_id
      t.integer :recipe_id

      t.timestamps null: false
    end
  end
end
