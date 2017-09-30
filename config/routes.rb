Rails.application.routes.draw do
	get 'welcome/index'

	resources :articles do
		resources :comments
	end

	resources :albums #, only: [:show]
	resources :about#, only:[:index]
  root 'welcome#index'
end
