require 'test_helper'

class SuckersControllerTest < ActionController::TestCase
  setup do
    @sucker = suckers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suckers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sucker" do
    assert_difference('Sucker.count') do
      post :create, :sucker => @sucker.attributes
    end

    assert_redirected_to sucker_path(assigns(:sucker))
  end

  test "should show sucker" do
    get :show, :id => @sucker.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sucker.to_param
    assert_response :success
  end

  test "should update sucker" do
    put :update, :id => @sucker.to_param, :sucker => @sucker.attributes
    assert_redirected_to sucker_path(assigns(:sucker))
  end

  test "should destroy sucker" do
    assert_difference('Sucker.count', -1) do
      delete :destroy, :id => @sucker.to_param
    end

    assert_redirected_to suckers_path
  end
end
