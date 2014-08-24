require 'rails_helper'

RSpec.describe Classroom, :type => :model do
  it 'create' do
    classroom = Classroom.create(name: 'a')
    expect(classroom.name).to be_eql('a')
  end

  describe 'name' do
    it 'uniqueness validation' do
      Classroom.create(name: 'a')
      classroom = Classroom.create(name: 'a')
      expect(classroom.save).to be_eql(false)
    end

    it 'length validation' do
      c1 = Classroom.create(name: 'f')
      expect(c1.save).to be_eql(true)
      c2 = Classroom.create(name: 'foo')
      expect(c2.save).to be_eql(false)
    end
  end
end
