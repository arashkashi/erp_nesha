class ApplicationController < ActionController::Base

	before_action :require_login

	helper_method :current_user
	helper_method :logged_in?

	def current_user
   		User.find_by(id: session[:user_id])
	end
	
	def logged_in?   
    	!current_user.nil? && current_user.enabled
	end

	private

  	def require_login
    	unless logged_in?
      		flash[:error] = "You must be logged in to access this section"
      		redirect_to root_path
    	end
  	end

  	def record_activity
    	@activity 		= ActivityLog.new
    	@activity.user 	= User.find(session[:user_id])
    	@activity.browser = request.env['HTTP_USER_AGENT']
    	@activity.ip_address = request.env['REMOTE_ADDR']
    	@activity.controller = controller_name 
    	@activity.action = action_name 
    	@activity.params = params.to_json.to_s
    	@activity.save
	end
end
