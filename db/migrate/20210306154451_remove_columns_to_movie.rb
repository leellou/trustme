class RemoveColumnsToMovie < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :director
  end
end
