class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :recruiters
  belongs_to :school, :foreign_key => 'user_school', :class_name => 'School'
  has_many :interactions, :dependent => :destroy

  belongs_to :primary_industry, :foreign_key => 'pri_ind', :class_name => 'Industry'
  belongs_to :other_industry, :foreign_key => 'oth_ind', :class_name => 'Industry'  
  belongs_to :previous_industry, :foreign_key => 'prev_ind', :class_name => "Industry"
  belongs_to :primary_region, :foreign_key => 'pri_reg', :class_name => 'Region'

  has_many :user_notes

  validates :username, :user_school, :pri_ind, :pri_reg, :prev_ind, :presence => true
  validates :username, :uniqueness => true

end
