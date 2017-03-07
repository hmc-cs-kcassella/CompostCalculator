class RemoveDryWeightFromComposters < ActiveRecord::Migration[5.0]
  def change
    remove_column :composters, :dryWeight, :float
  end
end
