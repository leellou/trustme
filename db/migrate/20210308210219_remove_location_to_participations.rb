class RemoveLocationToParticipations < ActiveRecord::Migration[6.0]
  def change
    remove_column :participations, :location
  end
end
