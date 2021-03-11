class RemoveLanguagueSubtitleToMovie < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :language_subtitle
  end
end
