class AddColumnTmdbIdToProviders < ActiveRecord::Migration[6.0]
  def change
    add_column :providers, :tmdb_id, :integer
  end
end
