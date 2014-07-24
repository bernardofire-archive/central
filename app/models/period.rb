class Period < ActiveRecord::Base
  attr_accessible :number, :kind
  belongs_to :course
  validates :number, presence: true
  validates :kind, presence: true
end
