class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :question
      t.string :answer
      t.integer :collection_id

      t.timestamps null: false
    end
  end
end
