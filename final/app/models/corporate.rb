class Corporate < ActiveRecord::Base

  has_many :recruiters
  belongs_to :industry, :foreign_key => "corp_ind", :class_name => "Industry"
  belongs_to :industry_name, :foreign_key => "industry_name", :class_name => "Industry"
  belongs_to :region, :foreign_key => "corp_reg", :class_name => "Region"
  belongs_to :region_name, :foreign_key => "region_name", :class_name => "Region"
  has_many :user_notes

  validates :corp_name, :corp_ind, :corp_reg, :presence => true
  validates :corp_name, :uniqueness => { :scope => :corp_reg }

end
