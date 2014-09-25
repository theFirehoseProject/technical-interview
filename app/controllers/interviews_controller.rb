class InterviewsController < ApplicationController
  before_action :authenticate_user!


  def claim
    current_user.interviews<<Interview.first
    redirect_to root_path
  end
end
