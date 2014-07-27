require 'rails_helper'

feature 'Institution' do
  scenario 'create' do
    visit new_institution_path
    fill_in 'Name', with: 'foo'
    click_button 'Create Institution'
  end
end
