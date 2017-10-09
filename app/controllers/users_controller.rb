class UsersController < ApplicationController
	def new
	end

	def create
		user = User.create(user_params)

		if user
			flash[:success] = "Register successfully."
			redirect_to login_path
		else
			flash[:error] = "Cannot create new account."
			render :new
		end
	end

	def user_params
		params.require(:user).permit(:name, :email, :password)
	end

end
