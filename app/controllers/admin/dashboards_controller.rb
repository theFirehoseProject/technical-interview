class Admin::DashboardsController < ApplicationController

	def show
		@questions = Question.all
		@topics = Topic.all
		@users = User.all
	end

end
