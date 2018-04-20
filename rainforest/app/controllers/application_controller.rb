class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

private

  	def current_user 
		user_id = session[:user_id]

		#makes sure if user_id exists. 
		user_id && User.find(user_id)
	end 

end
