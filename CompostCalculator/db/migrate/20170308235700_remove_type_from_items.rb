class RemoveTypeFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :type, :string
  end
end
