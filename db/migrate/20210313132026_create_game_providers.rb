class CreateGameProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :game_providers do |t|
      t.references :game, null: false, foreign_key: true
      t.references :provider, null: false, foreign_key: true

      t.timestamps
    end
  end
end
