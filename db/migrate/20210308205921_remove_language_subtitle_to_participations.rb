class RemoveLanguageSubtitleToParticipations < ActiveRecord::Migration[6.0]
  def change
    remove_column :participations, :language_subtitle
  end
end
