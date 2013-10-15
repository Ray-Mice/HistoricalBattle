class AddIndexToBattlesName < ActiveRecord::Migration
  def change
    add_index :battles, :name, unique: true
  end
end
