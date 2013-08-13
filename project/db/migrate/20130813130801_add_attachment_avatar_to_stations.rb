class AddAttachmentAvatarToStations < ActiveRecord::Migration
  def self.up
    change_table :stations do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :stations, :avatar
  end
end
