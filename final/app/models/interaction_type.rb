class InteractionType < ActiveRecord::Base

  has_many :interactions

  validates :int_type, :presence => true, :uniqueness => true

end
