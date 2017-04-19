class AddNewestItemToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :newestItem, :string
  end
end
