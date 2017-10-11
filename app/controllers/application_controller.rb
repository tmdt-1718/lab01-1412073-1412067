class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	def current_user
		return unless session[:user_id]
		@current_user ||= User.find(session[:user_id])
	end

	def authenticate
     if session[:current_user].nil?
       redirect_to login_path
     end
  end

end
