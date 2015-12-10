class RemoveDivisiesFromGame < ActiveRecord::Migration
  def change
    remove_column :games, :divisies, :integer
  end
end
