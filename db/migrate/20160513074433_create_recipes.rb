class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name, length: { maximum: 100 }, presence: true
      t.string :material, length: { maximum: 50 }, presence: true
      t.string :url
      t.text :content, presence: true
      t.text :memo
      t.integer :made_count
      t.timestamps null: false
    end
  end
end
