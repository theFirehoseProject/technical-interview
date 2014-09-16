class Admin::DashboardsController < ApplicationController

	def show
		@questions = Question.all
		@question = Question.new
		@topics = Topic.all
		@users = User.all
	end

end
