class Micropost < ActiveRecord::Base
  attr_accessible :content

  attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  

  belongs_to :user
  validates :content, :presence => true

end
