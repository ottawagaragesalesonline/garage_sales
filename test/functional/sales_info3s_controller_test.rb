require 'test_helper'

class SalesInfo3sControllerTest < ActionController::TestCase
  setup do
    @sales_info3 = sales_info3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_info3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_info3" do
    assert_difference('SalesInfo3.count') do
      post :create, :sales_info3 => @sales_info3.attributes
    end

    assert_redirected_to sales_info3_path(assigns(:sales_info3))
  end

  test "should show sales_info3" do
    get :show, :id => @sales_info3.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sales_info3.to_param
    assert_response :success
  end

  test "should update sales_info3" do
    put :update, :id => @sales_info3.to_param, :sales_info3 => @sales_info3.attributes
    assert_redirected_to sales_info3_path(assigns(:sales_info3))
  end

  test "should destroy sales_info3" do
    assert_difference('SalesInfo3.count', -1) do
      delete :destroy, :id => @sales_info3.to_param
    end

    assert_redirected_to sales_info3s_path
  end
end
