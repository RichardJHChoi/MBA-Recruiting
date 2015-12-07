class UserNote < ActiveRecord::Base

  belongs_to :user
  belongs_to :recruiter
  belongs_to :corporate
  belongs_to :note_template

end
