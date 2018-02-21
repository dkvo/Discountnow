class Vendor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  
  validates :address, :uniqueness => true
end
