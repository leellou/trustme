class RemoveWatchTypeToGames < ActiveRecord::Migration[6.0]
  def change
    remove_column :games, :watch_type
  end
end
