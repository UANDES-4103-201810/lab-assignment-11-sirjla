require 'rails_helper'
RSpec.describe Message, type: :model do
	it "New message creation with valid attributes to be valid" do
		user = create(:user)
		message = build(:message, user_id: user.id)
		expect(message).to be_valid
	end
	it "New message with nil user to be invalid" do
		message = build(:message, user_id: nil)
		expect(message).to_not be_valid
	end
	it "New message with non existing user to be invalid" do
		user = create(:user)
        message = build(:message, user_id: user.id+1)
		expect(message).to_not be_valid
	end
end
