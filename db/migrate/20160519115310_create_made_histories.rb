class CreateMadeHistories < ActiveRecord::Migration
  def change
    create_table :made_histories do |t|
      t.timestamps null: false
    end
  end
end
