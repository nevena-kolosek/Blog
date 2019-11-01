class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  before_action 

  def user_not_authorized
      flash[:warning] = "You are not authorized to perform this action."
      redirect_to(request.referrer || root_path)
  end

  def set_mailer_host
  	if current_user
  		subdomain = "#{current_user.account.subdomain}."
  	else
  		subdomain = "#"
  	end

  	ActionMailer::Base.defaulet_url_options[:host] = "#{subdomain}lvh.me:3000"
  end

  def after_invate_path_for(resource)
  	#add_member_team_path
  end
end
