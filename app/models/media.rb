class Media < ActiveRecord::Base
  attr_accessible :pic
  attr_accessible :microposts

  has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates :pic, :attachment_presence => true
  validates_with AttachmentPresenceValidator, :attributes => :pic

  belongs_to :user
  has_many :microposts

end

