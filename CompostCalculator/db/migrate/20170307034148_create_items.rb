class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :type
      t.float :dryWeight
      t.float :wetWeight

      t.timestamps
    end
  end
end
