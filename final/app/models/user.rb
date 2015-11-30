class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :recruiters
  belongs_to :user_school, :foreign_key => 'user_school', :class_name => 'School'
  has_many :interactions, :dependent => :destroy

  belongs_to :pri_ind, :foreign_key => 'pri_ind', :class_name => 'Industry'
  belongs_to :oth_ind, :foreign_key => 'oth_ind', :class_name => 'Industry'  
  belongs_to :prev_ind, :foreign_key => 'prev_ind', :class_name => "Industry"
  belongs_to :pri_reg, :foreign_key => 'pri_reg', :class_name => 'Region'


  validates :username, :user_school, :pri_ind, :pri_reg, :prev_ind, :presence => true



end
