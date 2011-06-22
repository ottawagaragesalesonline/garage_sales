require 'test_helper'

class SalesInfo2sControllerTest < ActionController::TestCase
  setup do
    @sales_info2 = sales_info2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_info2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_info2" do
    assert_difference('SalesInfo2.count') do
      post :create, :sales_info2 => @sales_info2.attributes
    end

    assert_redirected_to sales_info2_path(assigns(:sales_info2))
  end

  test "should show sales_info2" do
    get :show, :id => @sales_info2.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sales_info2.to_param
    assert_response :success
  end

  test "should update sales_info2" do
    put :update, :id => @sales_info2.to_param, :sales_info2 => @sales_info2.attributes
    assert_redirected_to sales_info2_path(assigns(:sales_info2))
  end

  test "should destroy sales_info2" do
    assert_difference('SalesInfo2.count', -1) do
      delete :destroy, :id => @sales_info2.to_param
    end

    assert_redirected_to sales_info2s_path
  end
end
