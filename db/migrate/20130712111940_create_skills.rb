class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :skill
      t.text :comment
      t.integer :rating

      t.timestamps
    end
  end
end
