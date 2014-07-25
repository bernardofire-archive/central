class Classroom < ActiveRecord::Base
  attr_accessible :name
  validates :name, presence: true, length: { maximum: 1 }
end
