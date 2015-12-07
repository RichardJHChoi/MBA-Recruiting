class Recruiter < ActiveRecord::Base

  belongs_to :user
  belongs_to :corporate
  belongs_to :school, :foreign_key => 'rec_school', :class_name => 'School'
  belongs_to :rec_ind, :foreign_key => 'rec_industry', :class_name => 'Corporate'
  has_many :user_notes

end
