class AddNameToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :size, :decimal
  end
end
