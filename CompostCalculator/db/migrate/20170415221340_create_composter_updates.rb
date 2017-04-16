class CreateComposterUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :composter_updates do |t|
      t.integer :cuid
      t.integer :cid
      t.float :wetWeight
      t.float :dryWeight
      t.float :cNRatio

      t.timestamps
    end
  end
end
