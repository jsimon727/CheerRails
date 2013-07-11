class Skills < ActiveRecord::Base
  attr_accessible :comments, :rating, :skill

  belongs_to :user
end
