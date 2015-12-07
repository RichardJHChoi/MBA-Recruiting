class Corporate < ActiveRecord::Base

  has_many :recruiters
  belongs_to :industry
  belongs_to :region
  has_many :user_notes

  validates :corp_name, :corp_ind, :corp_reg, :presence => true
  validates :corp_name, :uniqueness => { :scope => :corp_reg }

end
