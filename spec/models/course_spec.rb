require 'rails_helper'

RSpec.describe Course, :type => :model do
  it 'create' do
    course = Course.create(name: 'foo')
    expect(course.name).to be_eql('foo')
  end

  it 'has many periods' do
    course = Course.create(name: 'foo')
    course.periods.create(number: 1, type: 'year')
    course.periods.create(number: 1, type: 'year')
    expect(course.periods[0].number).to be_eql(1)
    expect(course.periods[1].number).to be_eql(1)
  end

  it 'test name presence' do
  end
end
