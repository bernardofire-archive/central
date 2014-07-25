class Classroom < ActiveRecord::Base
  attr_accessible :name
  belongs_to :period
  validates :name, presence: true, length: { maximum: 1 }
end
