class CreateComposters < ActiveRecord::Migration[5.0]
  def change
    create_table :composters do |t|
  	  has_many :composter_updates
      t.string :name
      t.float :size
      t.float :temperature
      t.float :flipTime

      t.timestamps
    end
  end
end
