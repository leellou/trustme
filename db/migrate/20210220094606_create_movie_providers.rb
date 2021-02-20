class CreateMovieProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_providers do |t|
      t.references :provider, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
