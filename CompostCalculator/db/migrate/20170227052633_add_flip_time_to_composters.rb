class AddFlipTimeToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :flipTime, :float
  end
end
