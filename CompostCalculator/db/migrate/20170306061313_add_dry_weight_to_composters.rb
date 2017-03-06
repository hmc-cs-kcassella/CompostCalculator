class AddDryWeightToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :dryWeight, :float
  end
end
