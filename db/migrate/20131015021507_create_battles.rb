class CreateBattles < ActiveRecord::Migration
  def change
    create_table :battles do |t|
      t.string :name
      t.string :date
      t.string :location
      t.string :belligerentA
      t.string :belligerentB
      t.string :strengthA
      t.string :strengthB
      t.string :casualtiesA
      t.string :casualtiesB
      t.string :result

      t.timestamps
    end
  end
end
