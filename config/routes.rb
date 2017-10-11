Rails.application.routes.draw do

	get '/sessions/login', to: 'sessions#new', as: :login
	post '/sessions/login', to: 'sessions#create', as: nil
	delete '/sessions/logout', to: 'sessions#destroy', as: :logout
	
	resources :users, only: [:new, :create ]
	#do
		resources :articles do
			resources :comments
	#	end
	end

	resources :albums do 
		resources :photos, only: [:index, :show, :update]
	end
	resources :about#, only:[:index]
	
  	root 'welcome#index'
end
