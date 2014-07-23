require 'rails_helper'

RSpec.describe Institution, :type => :model do
  it 'should ' do
    ins = Institution.new(name: 'foo')
    expect(ins.name).to be_eql('foo')
  end
end
