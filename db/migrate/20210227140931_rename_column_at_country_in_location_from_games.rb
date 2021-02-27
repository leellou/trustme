class RenameColumnAtCountryInLocationFromGames < ActiveRecord::Migration[6.0]
  def change
    rename_column :games, :country, :location
  end
end
