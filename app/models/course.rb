class Course < ActiveRecord::Base
  attr_accessible :name
  has_many :periods
  belongs_to :institution
end
