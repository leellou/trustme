class AddForeignKeyGenreIdToParticipations < ActiveRecord::Migration[6.0]
  def change
    add_reference :participations, :genre, foreign_key: true
  end
end
