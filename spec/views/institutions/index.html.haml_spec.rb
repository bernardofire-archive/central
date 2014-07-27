require 'rails_helper'

describe 'institutions/index.html.haml' do
  context 'when there is at least one institution' do
    it 'shows info properly' do
      Institution.create name: 'foobar'
      assign(:institutions, Institution.all)
      render
      expect(rendered).to have_content('Institutions')
      expect(rendered).to have_content('Name')
      expect(rendered).to have_link('foobar')
      expect(rendered).to have_content('Actions')
      expect(rendered).to have_content('Edit')
      expect(rendered).to have_content('Delete')
      expect(rendered).to have_content('New')
    end
  end
end
