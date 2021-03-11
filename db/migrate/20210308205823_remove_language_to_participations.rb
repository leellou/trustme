class RemoveLanguageToParticipations < ActiveRecord::Migration[6.0]
  def change
    remove_column :participations, :language
  end
end
