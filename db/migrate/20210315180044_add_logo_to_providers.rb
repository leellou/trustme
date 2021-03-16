class AddLogoToProviders < ActiveRecord::Migration[6.0]
  def change
    add_column :providers, :logo, :string
  end
end
