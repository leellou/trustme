class RenameColumnAtTypeInWatchTypeFromMovies < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :type, :watch_type
  end
end
