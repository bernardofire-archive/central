require 'rails_helper'

RSpec.describe Course, :type => :model do
  it 'create' do
    course = Course.create(name: 'foo')
    expect(course.name).to be_eql('foo')
  end

  it 'test name presence' do
  end
end
