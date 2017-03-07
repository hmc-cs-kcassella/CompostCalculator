class RemoveMoistureContentFromComposters < ActiveRecord::Migration[5.0]
  def change
    remove_column :composters, :moistureContent, :float
  end
end
