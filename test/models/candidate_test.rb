require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
	test "should be valid factory" do
		candidate = build(:candidate)
		assert candidate.valid?
	end

	test "should not without required fields" do
		candidate1 = build(:candidate, email: "")
		assert_not candidate1.valid?
		candidate2 = build(:candidate, first_name: "")
		assert_not candidate2.valid?
		candidate3 = build(:candidate, last_name: "")
		assert_not candidate3.valid?
	end

	test "should only allow selected status options" do
		candidate = build(:candidate, status: "something")
		assert candidate.invalid?
		assert_match(candidate.errors.full_messages.to_sentence, "Status something is not a valid option")
	end


end
