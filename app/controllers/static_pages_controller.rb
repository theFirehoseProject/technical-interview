class StaticPagesController < ApplicationController
  before_action :authenticate_user!, :only => :welcome

  def index
    if current_user.present?
      redirect_to welcome_path
    end
  end

  def welcome

  end

end
