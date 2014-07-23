require 'rails_helper'

RSpec.describe Course, :type => :model do
  it 'should ' do
    course = Course.new(name: 'foo')
    expect(course.name).to be_eql('foo')
  end
end
