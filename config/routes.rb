Rails.application.routes.draw do
	get 'welcome/index'

	resources :articles do
		resources :comments
	end

	resources :albums do 
		resources :photos, only: [:index, :show, :update]
	end
	resources :about#, only:[:index]

  root 'welcome#index'
end
