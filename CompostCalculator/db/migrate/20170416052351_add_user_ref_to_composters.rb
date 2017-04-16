class AddUserRefToComposters < ActiveRecord::Migration[5.0]
  def change
    add_reference :composters, :user, index: true
  end
end
