class AddMoistureContentToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :moistureContent, :float
  end
end
