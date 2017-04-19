class AddNewestTempToComposters < ActiveRecord::Migration[5.0]
  def change
    add_column :composters, :newestTemp, :string
  end
end
