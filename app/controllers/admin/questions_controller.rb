class Admin::QuestionsController < ApplicationController
	def index
	end

	def create
		@question = Question.new(question_params)
   		if @question.invalid?
      		flash[:alert] = '<strong>Could not save</strong> the data you entered is invalid.'
    	end
    @question.save
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
