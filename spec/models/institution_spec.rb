require 'rails_helper'

RSpec.describe Institution, :type => :model do
  it 'create' do
    ins = Institution.new(name: 'foo')
    expect(ins.name).to be_eql('foo')
  end

  it 'has many courses' do
    ins = Institution.create(name: 'foo')
    ins.courses.create(name: 'course_1')
    ins.courses.create(name: 'course_2')
    expect(ins.courses[0].name).to be_eql('course_1')
    expect(ins.courses[1].name).to be_eql('course_2')
  end

  describe 'validation' do
    it 'name presence' do
      ins = Institution.create(name: 'foo')
      expect(ins.save).to be(true)
      ins = Institution.create(name: nil)
      expect(ins.save).to be(false)
    end
  end
end
