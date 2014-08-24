class Course < ActiveRecord::Base
  attr_accessible :name, :institution
  has_many :periods
  belongs_to :institution
  validates :name, :institution, presence: true
end
