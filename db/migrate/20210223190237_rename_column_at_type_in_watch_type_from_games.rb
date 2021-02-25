class RenameColumnAtTypeInWatchTypeFromGames < ActiveRecord::Migration[6.0]
  def change
    rename_column :games, :type, :watch_type
  end
end
