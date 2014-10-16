class Admin::DashboardsController < ApplicationController
before_action :authenticate_user!
before_action :verify_admin

	def show
		@questions = Question.all
		@question = Question.new

		@interviews = Interview.all
		@interview = Interview.new
		
		@topics = Topic.all
		@users = User.all
	end

























private

def verify_admin
	unless current_user && current_user.admin?
		flash[:alert] = "You are not authorized to access this page"
		#render :text => "You are not authorized to access this page", :status => :forbidden
		redirect_to root_path
	end
end

end