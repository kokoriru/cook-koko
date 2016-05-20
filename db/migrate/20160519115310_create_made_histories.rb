class CreateMadeHistories < ActiveRecord::Migration
  def change
    create_table :made_histories do |t|
      t.belongs_to :recipe
      t.timestamps null: false
    end
  end
end
