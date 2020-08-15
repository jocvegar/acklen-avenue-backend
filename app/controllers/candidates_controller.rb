class CandidatesController < ApplicationController
	before_action :authenticate_user!

	def index
		candidates = Candidate.all
		render json: candidates
	end
end
