class Candidate < ApplicationRecord
	extend FriendlyId
	friendly_id :email, use: :slugged

	validates_presence_of :first_name, :last_name, :email
	validates :status, inclusion: { in: %w(review pass declined),
		message: "%{value} is not a valid option", allow_nil: true }
end
