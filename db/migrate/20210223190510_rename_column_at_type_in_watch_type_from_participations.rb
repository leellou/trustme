class RenameColumnAtTypeInWatchTypeFromParticipations < ActiveRecord::Migration[6.0]
  def change
    rename_column :participations, :type, :watch_type
  end
end
