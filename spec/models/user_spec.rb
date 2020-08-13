require 'rails_helper'

RSpec.describe User, type: :model do
  it 'validates username' do
    user = User.new(username: 'I')
    expect(user.valid?).to be(false)
  end

  describe 'Associations' do
    it { should have_many(:events).with_foreign_key('creator_id') }
    it { should have_many(:attendances).with_foreign_key('attendee_id') }
    it { should have_many(:attended_events).through(:attendances).source(:attended_event) }
  end
end
