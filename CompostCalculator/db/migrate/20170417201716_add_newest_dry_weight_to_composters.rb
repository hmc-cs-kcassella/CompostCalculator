class AddNewestDryWeightToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :newestDryWeight, :string
  end
end
