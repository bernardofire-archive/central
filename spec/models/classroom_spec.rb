require 'rails_helper'

RSpec.describe Classroom, :type => :model do
  it 'create' do
    classroom = Classroom.create(name: 'a')
    expect(classroom.name).to be_eql('a')
  end

  describe 'name' do
    it 'validate uniqueness' do
    Classroom.create(name: 'a')
    classroom = Classroom.create(name: 'a')
    expect(classroom.save).to be_eql(false)
    end
  end

  it 'test name length validation' do
  end
end
