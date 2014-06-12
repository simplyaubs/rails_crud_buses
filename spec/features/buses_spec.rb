require 'spec_helper'

feature 'CRUD bus routes' do
  scenario 'User can create a list of bus routes' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a bus'
    fill_in 'Route', with: 'AB'
    fill_in 'Direction', with: 'East'
    click_on 'Add bus'
    expect(page).to have_content 'AB'
    expect(page).to have_content 'East'
  end
end