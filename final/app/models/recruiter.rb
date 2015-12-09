class Recruiter < ActiveRecord::Base

  belongs_to :user
  belongs_to :corporate, :foreign_key => 'rec_corp', :class_name => 'Corporate'
  belongs_to :school, :foreign_key => 'rec_school', :class_name => 'School'
  belongs_to :rec_ind, :foreign_key => 'rec_industry', :class_name => 'Industry'
  has_many :user_notes

  validates :rec_name, :rec_corp, :rec_school, :rec_email, :presence => true
  validates :rec_email, :uniqueness => true
  validates :rec_name, :uniqueness => { :scope => :rec_email }

end
