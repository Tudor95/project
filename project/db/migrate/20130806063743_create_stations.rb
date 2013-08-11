class CreateStations < ActiveRecord::Migration
  def up
    drop_table :stations
    
    create_table :stations do |t|
      t.string :model

      t.timestamps
    end
  end
end
