Rails.application.routes.draw do

  devise_for :users
	root 'home#index'

	scope :api, defaults: {format: :json} do
		resources :candidates
	end
end
