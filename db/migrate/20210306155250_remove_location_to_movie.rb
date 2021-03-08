class RemoveLocationToMovie < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :location
  end
end
