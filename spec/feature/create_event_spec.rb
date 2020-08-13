require 'rails_helper'

RSpec.describe 'Create event', type: :feature do
  before(:each) do
    user = User.create(username: 'User') # rubocop:disable Lint/UselessAssignment
    visit '/session/new'
    page.fill_in 'username', with: 'User'
    click_button 'Sign In'
  end

  it 'should create a new event' do
    visit root_path
    click_on('Create an event')
    expect(page).to have_current_path(new_event_path)
    page.fill_in 'Title', with: 'Final'
    page.fill_in 'Description', with: 'UEFA Champions League final game'
    page.fill_in 'Date', with: '08/25/2020'
    click_on('Create Event')
    expect(page).to have_text('Congrats! A new event created!')
  end
end
