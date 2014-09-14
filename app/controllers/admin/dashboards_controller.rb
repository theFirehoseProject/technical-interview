class Admin::DashboardsController < ApplicationController

	def show
		@questions = Question.all
	end

end
