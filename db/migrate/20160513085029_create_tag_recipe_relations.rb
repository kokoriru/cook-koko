class CreateTagRecipeRelations < ActiveRecord::Migration
  def change
    create_table :tag_recipe_relations do |t|
      t.belongs_to :tag
      t.belongs_to :recipe
      t.timestamps null: false
    end
  end
end
