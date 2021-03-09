class RemoveColumnsToGames < ActiveRecord::Migration[6.0]
  def change
    remove_column :games, :director
    remove_column :games, :location
    remove_column :games, :language_subtitle
  end
end
