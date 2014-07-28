require 'rails_helper'

describe 'institutions/show.html.haml' do
  context 'Institution created' do
    it 'shows info properly' do
      ins = Institution.create name: 'foobar'
      assign(:institution, ins)
      render
      expect(rendered).to have_content('Name:')
      expect(rendered).to have_content('foobar')
    end
  end
end
