class AddTempToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :temperature, :float
  end
end
