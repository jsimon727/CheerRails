class Media < ActiveRecord::Base
  attr_accessible :pic

  has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  belongs_to :user
  has_many :microposts

end

