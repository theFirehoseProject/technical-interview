class StaticPagesController < ApplicationController
  before_action :authenticate_user!, :only => :welcome

  def index
    if current_user.present? && current_user.admin?
      redirect_to admin_dashboard_path
    elsif newuser
      redirect_to welcome_path
    elsif current_user
      redirect_to interviews_path
    end
  end

  def welcome
    @unclaimed = current_user.unclaimed_interview
  end

  def thankyou
    if current_user.present?
    redirect_to welcome_path
    end
  end

  def privacy
  end

  private

  def newuser
    current_user && current_user.interviews.count == 0
  end
  

end
