class AdminController < ApplicationController
before_action :authenticate_user!
before_action :verify_admin


private

def verify_admin
	unless current_user && current_user.admin?
		flash[:alert] = "You are not authorized to access this page"
		#render :text => "You are not authorized to access this page", :status => :forbidden
		redirect_to root_path
	end
end

end