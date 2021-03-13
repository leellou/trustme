class AddGameToMovie < ActiveRecord::Migration[6.0]
  def change
    add_reference :movies, :game, foreign_key: true
  end
end
