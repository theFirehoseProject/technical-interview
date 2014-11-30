class InterviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :unless_interview_claimed, :only => :show

  def index
    @interviews = Interview.all
  end


  def claim
    claimed_interview = current_user.unclaimed_interview
    if current_user.interviews.count != 0
      redirect_to interviews_path,  :alert => 'You already claimed a free interview'
    else
     current_user.interviews << claimed_interview
     redirect_to interview_path(claimed_interview)
    end
  end


  def show
  #  @interviews = current_user.interviews (a current user's interviews can be
  #  viewed on the index page or moved to the user's dashboard)
  @interviews = current_interview.questions
  end

  private

  helper_method :current_interview

  def current_interview
    @current_interview ||= Interview.find(params[:id])
  end

  def unless_interview_claimed
    unless current_interview.claimed? current_user
      render :text => "You must claim this interview before viewing it.",
      :status => :forbidden
    end
  end

end
