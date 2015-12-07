class InteractionType < ActiveRecord::Base

  belongs_to :interaction_type

  validates :int_type, :presence => true, :uniqueness => true

end
