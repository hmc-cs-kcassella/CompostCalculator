class AddCnRatioToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :cNRatio, :float
  end
end
