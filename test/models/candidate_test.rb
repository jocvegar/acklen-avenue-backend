require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
	test "should be valid factory" do
		candidate = build(:candidate)
		assert candidate.valid?
	end
end
