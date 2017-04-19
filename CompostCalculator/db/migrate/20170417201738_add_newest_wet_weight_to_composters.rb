class AddNewestWetWeightToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :newestWetWeight, :string
  end
end
