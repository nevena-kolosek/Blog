class RegistrationsController < Devise::RegistrationsController

	def index

	end

	def new
		super
	end

	def create
		super 
	end

	def after_sign_up_path_for(resource)
		stories_path
	end

end
