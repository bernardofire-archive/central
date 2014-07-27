require 'rails_helper'

feature 'Institution' do
  scenario 'create' do
    visit new_institution_path
    fill_in 'Name', with: 'foo'
    click_button 'Create Institution'
    expect(page).to have_content 'Name: foo'
    expect(page).to have_content 'Delete'
  end

  scenario 'index' do
    Institution.create(name: 'foobar')
    visit institutions_path
    expect(page).to have_content 'Institutions'
    expect(page).to have_content 'New'
  end

  scenario 'edit' do
    ins = Institution.create(name: 'foobar')
    visit edit_institution_path(ins)
    fill_in 'Name', with: 'iff'
    click_button 'Update Institution'
    expect(page).to have_content 'Name: iff'
    expect(page).to have_content 'Delete'
  end

  scenario 'destroy' do
    ins = Institution.create(name: 'foobar')
    visit institution_path(ins)
    click_button 'Delete'
    expect(page).to have_content 'Are you sure?'
    click_button 'OK'
  end
end
