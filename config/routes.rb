Rails.application.routes.draw do
	resources :users, only: [:new, :create]

	get '/sessions/login', to: 'sessions#new', as: :login
	post '/sessions/login', to: 'sessions#create', as: nil
	delete '/sessions/logout', to: 'sessions#destroy', as: :logout
	
	resources :articles do
		resources :comments
	end

	resources :albums do 
		resources :photos, only: [:index, :show, :update]
	end
	resources :about#, only:[:index]
	
  root 'welcome#index'
end
