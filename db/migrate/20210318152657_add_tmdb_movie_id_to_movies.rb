class AddTmdbMovieIdToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :tmdb_movie_id, :integer
  end
end
