class AddWetsToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :wets, :float
  end
end
