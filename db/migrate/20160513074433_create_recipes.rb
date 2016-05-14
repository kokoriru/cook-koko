class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :material
      t.string :url
      t.text :content
      t.text :memo
      t.timestamps null: false
    end
  end
end
