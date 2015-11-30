class Corporate < ActiveRecord::Base

  belongs_to :recruiter
  belongs_to :industry
  belongs_to :region

end
