class CandidatesController < ApplicationController
	before_action :authenticate_user!
	before_action :get_candidate, only: [:destroy]

	def index
		candidates = Candidate.all
		render json: candidates
	end

	def destroy
		if @candidate.destroy
			head :no_content
		else
			render json: { errors: @candidate.errors }.to_json, status: 422
		end
	end

	private

	def get_candidate
		@candidate = Candidate.friendly.find(params[:id])
	end


end
