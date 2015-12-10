class Interaction < ActiveRecord::Base

  belongs_to :user
  belongs_to :interaction_type
  belongs_to :recruiter, :foreign_key => 'rec_id', :class_name => 'Recruiter'

  validates :rec_id, :int_type, :int_score, :presence => true
  
end
