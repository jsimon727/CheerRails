class Skill < ActiveRecord::Base
  attr_accessible :comment, :rating, :skill

  belongs_to :user
  
end
