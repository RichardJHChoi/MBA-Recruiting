class Industry < ActiveRecord::Base

  has_many :corporates

  validates :industry_name, :presence => true, :uniqueness => true

end
