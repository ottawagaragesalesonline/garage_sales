require 'test_helper'

class SalesInfosControllerTest < ActionController::TestCase
  setup do
    @sales_info = sales_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_info" do
    assert_difference('SalesInfo.count') do
      post :create, :sales_info => @sales_info.attributes
    end

    assert_redirected_to sales_info_path(assigns(:sales_info))
  end

  test "should show sales_info" do
    get :show, :id => @sales_info.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sales_info.to_param
    assert_response :success
  end

  test "should update sales_info" do
    put :update, :id => @sales_info.to_param, :sales_info => @sales_info.attributes
    assert_redirected_to sales_info_path(assigns(:sales_info))
  end

  test "should destroy sales_info" do
    assert_difference('SalesInfo.count', -1) do
      delete :destroy, :id => @sales_info.to_param
    end

    assert_redirected_to sales_infos_path
  end
end
