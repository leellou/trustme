class RemoveDirectorToParticipations < ActiveRecord::Migration[6.0]
  def change
    remove_column :participations, :director
  end
end
