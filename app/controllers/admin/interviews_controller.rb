class Admin::InterviewsController < ApplicationController

  def index
    @interviews = Interview.all
  end

  def create
		@interview = Interview.new(interview_params)
   		if @interview.invalid?
      		flash[:alert] = '<strong>Could not save</strong> the data you entered is invalid.'
    	end
    @questions = Question.all
    @interview.questions = @questions
    @interview.save

		redirect_to admin_dashboard_path
	end

	private

	def  interview_params
		params.require(:interview).permit(:question_ids => [])
	end
end
