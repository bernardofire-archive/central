require 'rails_helper'

feature 'Institution' do
  scenario 'create' do
    visit new_institution_path
    fill_in 'Name', with: 'foo'
    click_button 'Create Institution'
    expect(page).to have_content 'foo'
    expect(page).to have_content 'Delete'
  end

  scenario 'show' do
    ins = Institution.create(name: 'foobar')
    visit institution_path(ins)
    expect(page).to have_content('foobar')
    expect(page).to have_content('Courses:')
  end

  scenario 'shows courses' do
    ins = Institution.create(name: 'foobar')
    ins.courses.create(name: 'course1')
    ins.courses.create(name: 'course2')
    visit institution_path(ins)
    expect(page).to have_link('course1')
    expect(page).to have_link('course2')
  end

  scenario 'index' do
    Institution.create(name: 'foobar')
    visit institutions_path
    expect(page).to have_content 'foobar'
    expect(page).to have_content 'New'
  end

  scenario 'edit' do
    ins = Institution.create(name: 'foobar')
    visit edit_institution_path(ins)
    fill_in 'Name', with: 'iff'
    click_button 'Update Institution'
    expect(page).to have_content 'iff'
    expect(page).to have_content 'Delete'
  end

  scenario 'destroy' do
    ins = Institution.create(name: 'foobar')
    visit institution_path(ins)
    click_link 'Delete'
    expect(current_path).to be_eql institutions_path
  end
end
