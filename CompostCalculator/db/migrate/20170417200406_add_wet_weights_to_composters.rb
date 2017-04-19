class AddWetWeightsToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :wetWeights, :string
  end
end
