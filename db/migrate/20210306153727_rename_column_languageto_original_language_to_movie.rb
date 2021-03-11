class RenameColumnLanguagetoOriginalLanguageToMovie < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :language, :original_language
  end
end
