class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :iid
      t.integer :cuid
      t.string :name

      t.timestamps
    end
  end
end
