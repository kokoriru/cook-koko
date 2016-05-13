class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name, { maximum: 50 }, presence: true
      t.timestamps null: false
    end
  end
end
