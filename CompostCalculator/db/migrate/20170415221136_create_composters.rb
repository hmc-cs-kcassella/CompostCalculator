class CreateComposters < ActiveRecord::Migration[5.0]
  def change
    create_table :composters do |t|
      t.integer :cid
      t.integer :uid
      t.string :name
      t.float :temperature
      t.float :flipTime

      t.timestamps
    end
  end
end
