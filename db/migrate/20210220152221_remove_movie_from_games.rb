class RemoveMovieFromGames < ActiveRecord::Migration[6.0]
  def change
    remove_reference :games, :movie, null: false, foreign_key: true
  end
end
