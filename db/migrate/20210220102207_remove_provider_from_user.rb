class RemoveProviderFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :provider, null: false, foreign_key: true
  end
end
