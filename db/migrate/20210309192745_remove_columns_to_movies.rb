class RemoveColumnsToMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :watch_type
    remove_column :movies, :original_language
  end
end
