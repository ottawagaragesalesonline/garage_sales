require 'test_helper'

class SalesInfo7sControllerTest < ActionController::TestCase
  setup do
    @sales_info7 = sales_info7s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_info7s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_info7" do
    assert_difference('SalesInfo7.count') do
      post :create, :sales_info7 => @sales_info7.attributes
    end

    assert_redirected_to sales_info7_path(assigns(:sales_info7))
  end

  test "should show sales_info7" do
    get :show, :id => @sales_info7.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sales_info7.to_param
    assert_response :success
  end

  test "should update sales_info7" do
    put :update, :id => @sales_info7.to_param, :sales_info7 => @sales_info7.attributes
    assert_redirected_to sales_info7_path(assigns(:sales_info7))
  end

  test "should destroy sales_info7" do
    assert_difference('SalesInfo7.count', -1) do
      delete :destroy, :id => @sales_info7.to_param
    end

    assert_redirected_to sales_info7s_path
  end
end
