class CreateComposterUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :composter_updates do |t|
  	  has_many :items
      t.float :wetWeight
      t.float :dryWeight
      t.float :cNRation
      t.belongs_to :Composter, foreign_key: true

      t.timestamps
    end
  end
end
