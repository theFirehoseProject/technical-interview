class UsersController < ApplicationController

  	def show			#add show action, as called in routes
		@user = User.find(params[:id])
	    @user_email = current_user.email
	end

	def index
		@users = User.all
	end

	def update
		@user = User.find(params[:id])
		#if @user.update_attributes(:firehose => true)
		if @user.update_attributes(:firehose => params[:firehose])
			flash[:notice] = "Update successful!"
			redirect_to root_path
		else
			flash[:notice] = "Didn't work"
			redirect_to root_path
		end
	end


		
		
	


end
