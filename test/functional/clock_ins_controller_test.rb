require 'test_helper'

class ClockInsControllerTest < ActionController::TestCase
  setup do
    @clock_in = clock_ins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clock_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clock_in" do
    assert_difference('ClockIn.count') do
      post :create, :clock_in => @clock_in.attributes
    end

    assert_redirected_to clock_in_path(assigns(:clock_in))
  end

  test "should show clock_in" do
    get :show, :id => @clock_in.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @clock_in.to_param
    assert_response :success
  end

  test "should update clock_in" do
    put :update, :id => @clock_in.to_param, :clock_in => @clock_in.attributes
    assert_redirected_to clock_in_path(assigns(:clock_in))
  end

  test "should destroy clock_in" do
    assert_difference('ClockIn.count', -1) do
      delete :destroy, :id => @clock_in.to_param
    end

    assert_redirected_to clock_ins_path
  end
end
