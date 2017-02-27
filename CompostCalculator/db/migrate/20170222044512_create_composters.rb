class CreateComposters < ActiveRecord::Migration[5.0]
  def change
    create_table :composters do |t|
      t.text :name
      t.timestamps
    end
  end
end
