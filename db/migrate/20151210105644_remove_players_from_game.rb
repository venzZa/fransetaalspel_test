class RemovePlayersFromGame < ActiveRecord::Migration
  def change
    remove_column :games, :players, :string
  end
end
