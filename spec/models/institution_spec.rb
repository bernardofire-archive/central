require 'rails_helper'

RSpec.describe Institution, :type => :model do
  it 'create' do
    ins = Institution.new(name: 'foo')
    expect(ins.name).to be_eql('foo')
  end

  it 'test name presence' do
  end
end
