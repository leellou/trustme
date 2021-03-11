class RemoveGenreToParticipations < ActiveRecord::Migration[6.0]
  def change
    remove_column :participations, :genre
  end
end
