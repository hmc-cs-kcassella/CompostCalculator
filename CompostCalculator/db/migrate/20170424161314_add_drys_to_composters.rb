class AddDrysToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :drys, :float
  end
end
