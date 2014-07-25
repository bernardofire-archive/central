require 'rails_helper'

RSpec.describe Classroom, :type => :model do
  it 'create' do
    classroom = Classroom.create(name: 'a')
    expect(classroom.name).to be_eql('a')
  end

  it 'test name length validation' do
  end
end
