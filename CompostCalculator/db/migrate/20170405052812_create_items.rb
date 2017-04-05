class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.float :wetWeight
      t.float :dryWeight
      t.belongs_to :ComposterUpdate, foreign_key: true

      t.timestamps
    end
  end
end
