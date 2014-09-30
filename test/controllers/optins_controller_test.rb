require 'test_helper'

class OptinsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should redirect after optin" do
		optin = Optin.create(:name => "Peter", :email => "peter@pan.com")
		assert_response :success
	end
end
