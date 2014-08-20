class Course < ActiveRecord::Base
  attr_accessible :name, :institution
  validates :institution, presence: true
  has_many :periods
  belongs_to :institution
end
