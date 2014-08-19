class Course < ActiveRecord::Base
  attr_accessible :name
  validates :institution, presence: true
  has_many :periods
  belongs_to :institution
end
