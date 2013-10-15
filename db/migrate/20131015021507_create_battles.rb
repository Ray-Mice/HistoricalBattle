class CreateBattles < ActiveRecord::Migration
  def change
    create_table :battles do |t|
      t.string :name
      t.string :date
      t.string :location
      t.string :belligerent
      t.string :strength
      t.string :casualties
      t.string :result

      t.timestamps
    end
  end
end
