class AddRuntimeToParticipations < ActiveRecord::Migration[6.0]
  def change
    add_column :participations, :runtime, :integer
  end
end
