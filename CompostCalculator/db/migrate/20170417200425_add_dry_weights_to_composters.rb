class AddDryWeightsToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :dryWeights, :string
  end
end
