class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  belongs_to :media
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }


  default_scope order: 'microposts.created_at DESC'

  microposts = @user.microposts
  @user.destroy
  microposts.should_not be_empty
  microposts.each do |micropost|
  # Make sure the micropost doesn't appear in the database.
end
end

