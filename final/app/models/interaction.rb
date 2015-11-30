class Interaction < ActiveRecord::Base

  belongs_to :user
  belongs_to :interaction_type

end
