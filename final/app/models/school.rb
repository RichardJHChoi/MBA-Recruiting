class School < ActiveRecord::Base

  has_many :users
  has_many :recruiters

  validates :school_name, :uniqueness => true

end
