Rails.application.routes.draw do
  resources :candidates
	root 'home#index'
end
