class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :token
      t.boolean :type
      t.boolean :genre
      t.boolean :year
      t.boolean :director
      t.boolean :language
      t.boolean :language_subtitle
      t.boolean :country
      t.boolean :vote_average
      t.references :user, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
