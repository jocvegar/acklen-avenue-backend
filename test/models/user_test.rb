require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "must be valid factory" do
		user = build(:user)
		assert user.valid?
	end

	test "must be have required fields" do
		user1 = build(:user, email: "")
		assert_not user1.valid?
		user2 = build(:user, password: "")
		assert_not user2.valid?
	end
end
