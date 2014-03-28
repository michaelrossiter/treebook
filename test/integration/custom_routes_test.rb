require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest

  test "that /login route opens the login page" do
  	get '/login'
  	assert_response :success
  end
  test "that /feed route goes to statuses" do
  	get '/feed'
  	assert_response :success
  	assert_redirected_to '/'
  end

end
