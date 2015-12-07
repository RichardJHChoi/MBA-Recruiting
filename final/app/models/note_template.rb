class NoteTemplate < ActiveRecord::Base

  has_many :user_notes
  
  validates :interaction_type, :school_affinity, :min_score, :max_score, :presence => true

end
