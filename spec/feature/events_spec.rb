require "rails_helper"

RSpec.describe "Events", type: :feature do
  it "shows the menu of upcoming and past events" do
    visit root_path
    expect(page).to have_text('Upcoming events')
    expect(page).to have_text('Past events')
  end
end