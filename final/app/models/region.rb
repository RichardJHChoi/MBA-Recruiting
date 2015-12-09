class Region < ActiveRecord::Base

  has_many :corporates
  
  validates :region_name, :uniqueness => true
  
end
