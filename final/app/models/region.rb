class Region < ActiveRecord::Base

  has_many :corporates
  has_many :recruiters

end
