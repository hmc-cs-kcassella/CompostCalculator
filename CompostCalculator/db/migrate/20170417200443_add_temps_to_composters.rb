class AddTempsToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :temps, :string
  end
end
