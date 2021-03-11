class AddForeignKeyOrinalLanguageInMovies < ActiveRecord::Migration[6.0]
  def change
    add_reference :movies, :original_language, foreign_key: true
  end
end
