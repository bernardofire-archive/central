require 'rails_helper'

RSpec.describe Period, :type => :model do
  it 'create' do
    period = Period.create(number: 1, kind: 'year')
    expect(period.number).to be_eql(1)
    expect(period.kind).to be_eql('year')
  end

  it 'period has many classrooms' do
    period = Period.create(number: 1, kind: 'year')
    period.classrooms.create(name: 'a')
    period.classrooms.create(name: 'b')
    expect(period.classrooms[0].name).to be_eql('a')
    expect(period.classrooms[1].name).to be_eql('b')
  end

  it 'test number and type validation' do
  end
end
