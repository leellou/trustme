class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :type
      t.string :genre
      t.integer :year
      t.string :director
      t.string :language
      t.string :language_subtitle
      t.string :country
      t.integer :vote_average

      t.timestamps
    end
  end
end
