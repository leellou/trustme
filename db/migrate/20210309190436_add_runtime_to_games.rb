class AddRuntimeToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :runtime, :boolean
  end
end
