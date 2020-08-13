require "rails_helper"

RSpec.describe "Show Event", type: :feature do

  before(:each) do
    user = User.create(username: "User")
    visit "/session/new"
    page.fill_in 'username', with: "User"
    click_button "Sign In"
    @event = user.events.create(title: "Final", description: "Final game of Champions League", date: 30.days.from_now)
  end
  
  it "shows the details of event" do
    visit("/events/#{@event.id}")
    expect(page).to have_text(@event.title)
    expect(page).to have_text(@event.description)
    expect(page).to have_text(@event.date)
  end
end