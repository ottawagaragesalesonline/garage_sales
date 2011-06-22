require 'test_helper'

class ExtraControllerTest < ActionController::TestCase
  test "should get advertise" do
    get :advertise
    assert_response :success
  end

  test "should get login_extra" do
    get :login_extra
    assert_response :success
  end

  test "should get aboutus" do
    get :aboutus
    assert_response :success
  end

end
