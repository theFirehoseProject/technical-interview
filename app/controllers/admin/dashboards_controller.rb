class Admin::DashboardsController < AdminController


	def show
		@questions = Question.all
		@question = Question.new

		@interviews = Interview.all
		@interview = Interview.new

		@topics = Topic.all
		@users = User.all


	end

end
