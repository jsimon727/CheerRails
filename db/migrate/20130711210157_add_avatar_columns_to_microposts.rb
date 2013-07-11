class AddAvatarColumnsToMicroposts < ActiveRecord::Migration
  def self.up
    add_attachment :microposts, :avatar
  end

  def self.down
    remove_attachment :microposts, :avatar
  end
end

