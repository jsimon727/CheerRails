class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.integer :birthdate
      t.string :skills
      t.integer :skilllevel

      t.timestamps
    end
  end


class AddAvatarColumnsToUsers < ActiveRecord::Migration
  def self.up
    add_attachment :users, :avatar
  end

  def self.down
    remove_attachment :users, :avatar
  end
end

end
