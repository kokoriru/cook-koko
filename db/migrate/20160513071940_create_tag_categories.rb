class CreateTagCategories < ActiveRecord::Migration
  def change
    create_table :tag_categories do |t|
      t.string :name, length: { maximum: 50 }, presence: true
      t.timestamps null: false
    end
  end
end
