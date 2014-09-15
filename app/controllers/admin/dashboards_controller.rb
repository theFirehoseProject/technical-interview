class Admin::DashboardsController < ApplicationController

	def show
		@questions = Question.all
		@topics = Topic.all
	end

end
