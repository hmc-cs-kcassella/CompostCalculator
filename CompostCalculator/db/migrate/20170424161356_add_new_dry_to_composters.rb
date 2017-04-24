class AddNewDryToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :newDry, :float
  end
end
