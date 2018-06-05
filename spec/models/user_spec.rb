require 'rails_helper'
RSpec.describe User, type: :model do
	it "New user creation with valid attributes to be valid" do
		user = build(:user)
		expect(user).to be_valid
	end
	it "New user creation with not unique username not to be valid" do
		user = create(:user)
		user2 = build(:user, email:"lalala@gmail.com")
		expect(user2).to_not be_valid
	end
	it "New user creation with not unique email not to be valid" do
		 user = create(:user)
         user2 = build(:user, username:"lele")
         expect(user2).to_not be_valid
    end
	it "New user creation with username longer than 20 chars not to be valid" do
         user = build(:user, username:"1234567890987654321112334")
         expect(user).to_not be_valid
    end
end
