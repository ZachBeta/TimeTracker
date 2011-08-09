require 'test_helper'

class ClockOutsControllerTest < ActionController::TestCase
  setup do
    @clock_out = clock_outs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clock_outs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clock_out" do
    assert_difference('ClockOut.count') do
      post :create, :clock_out => @clock_out.attributes
    end

    assert_redirected_to clock_out_path(assigns(:clock_out))
  end

  test "should show clock_out" do
    get :show, :id => @clock_out.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @clock_out.to_param
    assert_response :success
  end

  test "should update clock_out" do
    put :update, :id => @clock_out.to_param, :clock_out => @clock_out.attributes
    assert_redirected_to clock_out_path(assigns(:clock_out))
  end

  test "should destroy clock_out" do
    assert_difference('ClockOut.count', -1) do
      delete :destroy, :id => @clock_out.to_param
    end

    assert_redirected_to clock_outs_path
  end
end
