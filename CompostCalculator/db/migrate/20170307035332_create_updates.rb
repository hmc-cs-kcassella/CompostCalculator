class CreateUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :updates do |t|
      t.float :wetWeight
      t.float :dryWeight
      t.float :cNRatio

      t.timestamps
    end
  end
end
