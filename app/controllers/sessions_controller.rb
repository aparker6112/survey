class SessionsController < ApplicationController
	def new
		redirect_to secretfeedback_path if logged_in?
	end

	def login
		user = User.find_by_username(params[:username])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to secretfeedback_path
		else
			redirect_to root_path
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end
end