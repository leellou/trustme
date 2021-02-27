class RenameColumnAtCountryInLocationFromMovies < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :country, :location
  end
end
