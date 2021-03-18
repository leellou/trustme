class AddTmdbGenreIdToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :tmdb_genre_id, :integer
  end
end
