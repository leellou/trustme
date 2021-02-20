class CreateParticipations < ActiveRecord::Migration[6.0]
  def change
    create_table :participations do |t|
      t.integer :type
      t.string :genre
      t.string :year
      t.string :director
      t.string :language
      t.string :language_subtitle
      t.string :country
      t.integer :vote_average
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
