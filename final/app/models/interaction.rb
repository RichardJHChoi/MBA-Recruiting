class Interaction < ActiveRecord::Base

  belongs_to :user
  belongs_to :interaction_type
  belongs_to :recruiter

  validates :rec_id, :int_type, :int_score, :presence => true
  
end
