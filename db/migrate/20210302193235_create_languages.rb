class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :iso_639_1
      t.string :english_name

      t.timestamps
    end
  end
end
