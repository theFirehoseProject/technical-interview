class Admin::QuestionsController < ApplicationController
	def index
	end

	def create
		@question = Question.create(question_params)
   		if @question.invalid?
      		flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    	end
		redirect_to admin_dashboard_path
	end

	def new
		@question = Question.new
	end

	private

	def  question_params
		params.require(:question).permit(:problem,:solution,:topic_id)
	end
end
