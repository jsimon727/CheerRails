class AddIdToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :id, :string
  end
end
