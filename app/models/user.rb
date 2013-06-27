class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :birthdate, :firstname, :lastname, :skilllevel, :skills

  has_many :media
  has_secure_password
  has_many :microposts, dependent: :destroy
  
  

  
  validates_email :email
  validates :email, :uniqueness => true
  validates :password, :presence => true
  validates :password, :length => { :in => 5..15, :message => " needs to be between 5 and 15 characters" } 
  validates :firstname, :presence => true
  validates :lastname, :presence => true


 
  

end
