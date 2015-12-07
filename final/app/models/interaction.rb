class Interaction < ActiveRecord::Base

  belongs_to :user
  belongs_to :interaction_type

  validates :rec_name, :int_type, :int_score, :presence => true
  
end
