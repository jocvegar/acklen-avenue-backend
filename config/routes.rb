Rails.application.routes.draw do
	root 'home#index'

	scope :api, defaults: {format: :json} do
		resources :candidates
		devise_for :users, controllers: {sessions: 'sessions'}
		devise_scope :user do
		  get 'users/current', to: 'sessions#show'
		end
	end
end
