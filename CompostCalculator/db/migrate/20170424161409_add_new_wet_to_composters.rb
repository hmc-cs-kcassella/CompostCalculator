class AddNewWetToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :newWet, :float
  end
end
