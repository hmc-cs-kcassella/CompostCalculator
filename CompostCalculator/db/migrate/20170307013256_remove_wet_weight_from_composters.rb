class RemoveWetWeightFromComposters < ActiveRecord::Migration[5.0]
  def change
    remove_column :composters, :wetWeight, :float
  end
end
