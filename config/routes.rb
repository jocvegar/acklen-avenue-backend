Rails.application.routes.draw do

	root 'home#index'

	scope :api, defaults: {format: :json} do
		resources :candidates
	end
end
