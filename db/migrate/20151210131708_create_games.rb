class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :user_id
      t.integer :time
      t.string :collection_id

      t.timestamps null: false
    end
  end
end
