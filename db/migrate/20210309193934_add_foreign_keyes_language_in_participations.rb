class AddForeignKeyesLanguageInParticipations < ActiveRecord::Migration[6.0]
  def change
    add_reference :participations, :original_language, foreign_key: true
    add_reference :participations, :genre, foreign_key: true
  end
end
