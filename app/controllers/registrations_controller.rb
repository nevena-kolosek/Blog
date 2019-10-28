class RegistrationsController < Devise::RegistrationsController

	def index

	end

	def new
	super

	end

	def create
		super 
		puts user_signed_in?
		#puts current_user.email
		#redirect_to stories_path
	end

	def after_sign_up_path_for(resource)
		stories_path
	end

end
