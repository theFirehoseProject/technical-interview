class InterviewsController < ApplicationController
  before_action :authenticate_user!


  def claim
    claimed_interview = Interview.first
    current_user.interviews<<claimed_interview
    redirect_to interview_path(claimed_interview)
  end

  def show
    @interviews = current_user.interviews
  end
end
