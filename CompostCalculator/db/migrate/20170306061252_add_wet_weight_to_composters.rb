class AddWetWeightToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :wetWeight, :float
  end
end
