class ChargesController < ApplicationController
  before_action :authenticate_user!


  def create

    # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      :email => current_user.email,
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Exam Goose',
      :currency    => 'usd'
    )

    @current_interview ||= Interview.find(params[:interview_id])
    current_user.interviews << @current_interview
    redirect_to interviews_path, alert: "Thanks! You now have access to the selected interview."

    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to interviews_path
  end


end


# In our create method, we’re creating a Stripe::Charge object with various POST parameters.
# Stripe expects charges to be in cents, so since we’re charging $5, we’ll need to set the amount parameter to 500.
# A Stripe Charge also takes an optional :description parameter, which in this case is Rails Stripe customer.
# Finally, we’re setting the :card property to the stripeToken parameter.
# This is something that is automatically created for us by Stripe’s Checkout, which we’re going to cover next.
# Some payments could fail, for a variety of reasons such as an invalid CVC, card number or failed charge.
# We can cater for this in a basic manner for the time being by catching any Stripe::CardError exceptions
#      and setting the flash hash.
