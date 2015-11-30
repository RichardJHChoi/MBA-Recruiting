class Recruiter < ActiveRecord::Base

  belongs_to :user
  belongs_to :corporate
  belongs_to :school
  belongs_to :rec_ind, through => :industry, source => :corporate
  belongs_to :rec_reg, through => :region, source => :corporate

end
