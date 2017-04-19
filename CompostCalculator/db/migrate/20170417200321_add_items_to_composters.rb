class AddItemsToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :items, :string
  end
end
