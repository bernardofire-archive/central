class Subject < ActiveRecord::Base
  attr_accessible :name
  belongs_to :course
  validates :name, presence: true
end
