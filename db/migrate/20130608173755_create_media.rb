class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :photos
      t.string :videos

      t.timestamps
    end
  end
end
