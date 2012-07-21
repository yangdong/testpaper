require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login successful" do
    post :create, {:name => 'YangDong', :password => 'Password'}
    assert_response :success
  end

  test "should logout" do
    get :destroy
    assert_response :success
  end

end
