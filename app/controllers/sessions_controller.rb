class SessionsController < Devise::SessionsController


	def create
		super 
	end

	def after_sign_in_path_for(resource)
		stories_path
	end

end
