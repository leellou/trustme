class RenameLanguageInOriginalLanguageToGames < ActiveRecord::Migration[6.0]
  def change
    rename_column :games, :language, :original_language
  end
end
