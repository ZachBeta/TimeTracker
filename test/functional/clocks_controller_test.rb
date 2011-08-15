require 'test_helper'

class ClocksControllerTest < ActionController::TestCase
  setup do
    @clock = clocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clock" do
    assert_difference('Clock.count') do
      post :create, :clock => @clock.attributes
    end

    assert_redirected_to clock_path(assigns(:clock))
  end

  test "should show clock" do
    get :show, :id => @clock.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @clock.to_param
    assert_response :success
  end

  test "should update clock" do
    put :update, :id => @clock.to_param, :clock => @clock.attributes
    assert_redirected_to clock_path(assigns(:clock))
  end

  test "should destroy clock" do
    assert_difference('Clock.count', -1) do
      delete :destroy, :id => @clock.to_param
    end

    assert_redirected_to clocks_path
  end
end
