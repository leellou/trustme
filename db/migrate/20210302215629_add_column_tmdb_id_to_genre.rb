class AddColumnTmdbIdToGenre < ActiveRecord::Migration[6.0]
  def change
    add_column :genres, :tmdb_id, :integer
  end
end
