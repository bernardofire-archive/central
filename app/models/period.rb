class Period < ActiveRecord::Base
  attr_accessible :number, :kind
  validates :number, presence: true
  validates :kind, presence: true
end
