class ChangeLanguagesToOriginalLanguages < ActiveRecord::Migration[6.0]
  def change
    rename_table :languages, :original_languages
  end
end
