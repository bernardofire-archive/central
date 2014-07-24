require 'rails_helper'

RSpec.describe Period, :type => :model do
  it 'create' do
    period = Period.create number: 1, type: 'year'
    expect(period.number).to be_eql(1)
    expect(period.type).to be_eql('year')
  end

  it 'test number and type validation' do
  end
end
