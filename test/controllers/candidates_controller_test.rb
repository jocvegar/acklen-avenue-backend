require 'test_helper'

class CandidatesControllerTest < ActionDispatch::IntegrationTest
	include Devise::Test::IntegrationHelpers

	def setup
		@user = create(:user)
		@candidate = create(:candidate)
	end

	test "should get index" do
		sign_in(@user)
		get candidates_path
		assert_response :success
	end

	test "should be able to create" do
		sign_in(@user)
		assert_difference "Candidate.count", 1, "should add candidate" do
			post candidates_path,
				params: { candidate:
					{first_name: "name", last_name: "last", email: "email@email.com" } }
		end
	end

	test "should be able to delete" do
		sign_in(@user)
		assert_difference "Candidate.count", -1, "should delete candidate" do
			delete candidate_path(id: @candidate.slug)
		end
	end
end
