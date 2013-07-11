class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :firstname, :lastname, :skilllevel, :skills
  attr_accessible :microposts
  attr_accessible :pic

  has_many :media
  has_many :microposts, dependent: :destroy
  has_many :skills
  

  
  validates_email :email
  validates :email, :uniqueness => true
  validates :password, :presence => true
  validates :password, :length => { :in => 5..15, :message => " needs to be between 5 and 15 characters" } 
  validates :firstname, :presence => true
  validates :lastname, :presence => true


 
  

end
