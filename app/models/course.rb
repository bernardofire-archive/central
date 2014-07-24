class Course < ActiveRecord::Base
  attr_accessible :name
  belongs_to :institution
end
