class OptinsController < ApplicationController

	def new
		@optin = Optin.new
	end

	def create
		 #render plain: params[:optin].inspect
		@optin = Optin.create(optin_params)

		 #if @optin.valid?
			redirect_to thankyou_path
		 #else
		 #render :new, :status => :unprocessable_entity
		 #end
	end

	private

	def optin_params
		params.require(:optin).permit(:name,:email)
	end

end
