require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should redirect to admin index page when user has already logged in" do
    session[:user] = ""
    get :new
    assert_redirected_to :admin
  end

  test "should login successful" do
    post :create, {:name => 'YangDong', :password => 'Password'}
    assert_response 302
  end

  test "should logout" do
    get :destroy
    assert_response :success
  end
end
