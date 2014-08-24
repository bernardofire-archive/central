require 'rails_helper'

RSpec.describe Course, :type => :model do
  it 'create' do
    course = Course.create(name: 'foo')
    expect(course.name).to be_eql('foo')
  end

  it 'has many periods' do
    course = Course.create(name: 'course', institution: Institution.create(name: 'ins'))
    course.periods.create(number: 1, type: 'year')
    course.periods.create(number: 1, type: 'year')
    expect(course.periods[0].number).to be_eql(1)
    expect(course.periods[1].number).to be_eql(1)
  end

  describe 'validation' do
    it 'name presence' do
      c = Course.create(name: 'foo', institution: Institution.create(name: 'yolo'))
      expect(c.save).to be(true)
      c = Course.create(name: nil)
      expect(c.save).to be(false)
    end

    it 'institution presence' do
      c = Course.create(name: 'foo', institution: nil)
      expect(c.save).to be(false)
      c = Course.create(name: 'foo', institution: Institution.create(name: 'yolo'))
      expect(c.save).to be(true)
    end
  end
end
