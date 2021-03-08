class RemoveWatchTypeToParticipations < ActiveRecord::Migration[6.0]
  def change
    remove_column :participations, :watch_type
  end
end
