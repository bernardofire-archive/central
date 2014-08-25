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

  describe 'validation' do
    it 'number presence' do
      p = Period.create(number: 1, kind: 'year')
      expect(p.save).to be(true)
      p = Period.create(number: nil, kind: 'year')
      expect(p.save).to be(false)
    end
    it 'kind presence' do
      p = Period.create(number: 1, kind: 'year')
      expect(p.save).to be(true)
      p = Period.create(number: 1, kind: nil)
      expect(p.save).to be(false)
    end
  end
end
