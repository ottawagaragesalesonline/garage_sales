require 'test_helper'

class ExtraSalesControllerTest < ActionController::TestCase
  test "should get advertise" do
    get :advertise
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

end
