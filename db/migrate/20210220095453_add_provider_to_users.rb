class AddProviderToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :provider, null: false, foreign_key: true
  end
end
