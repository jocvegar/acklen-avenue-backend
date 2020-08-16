class CandidatesController < ApplicationController
	before_action :authenticate_user!, except: [:create]
	before_action :get_candidate, only: [:destroy]

	def index
		candidates = Candidate.all.order(:first_name)
		render json: candidates
	end

	def create
		@candidate = Candidate.new(candidate_params)
		@candidate.status = "review"
		if @candidate.save
			render json: { candidate: "Created succesfully." }.to_json, status: 201
		else
			render json: { errors: "Unable to create. #{@candidate.errors.full_messages}" }.to_json, status: 422
		end
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

	def candidate_params
		params.require(:candidate).permit(:first_name, :last_name, :email)
	end

end
