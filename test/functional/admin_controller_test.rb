require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should redirect to login page" do
    session[:user] = User.new(:name => 'YangDong', :password => 'Password')
    get :index
    assert_response :success
  end

end
