class Admin::InterviewsController < AdminController

  def index
    @interviews = Interview.all
  end

  def create
		@interview = Interview.new(interview_params)
   		if @interview.invalid?
      		flash[:alert] = 'Could not save the data you entered is invalid.'
      end
    
    @questions = Question.all
    @interview.save

		redirect_to admin_dashboard_path
	end

	private

	def  interview_params
		params.require(:interview).permit(:title, :description, :question_ids => [])
	end
end
