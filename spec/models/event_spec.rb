require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'validates title and description for presence' do
    event = Event.new(title: '', description: '')
    expect(event.valid?).to be(false)
  end

  it 'validates description for length' do
    event = Event.new(title: 'Test', description: 'I')
    expect(event.valid?).to be(false)
  end

  describe 'Associations' do
    it { should belong_to(:creator).class_name('User') }
    it { should have_many(:attendances).with_foreign_key('attended_event_id') }
    it { should have_many(:attendees).through(:attendances).source(:attendee) }
  end
end
