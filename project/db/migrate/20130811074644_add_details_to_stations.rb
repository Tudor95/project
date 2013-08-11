class AddDetailsToStations < ActiveRecord::Migration
  def change
    add_column :stations, :price, :integer
    add_column :stations, :supplier, :string
    add_column :stations, :product, :string
  end
end
