require 'test_helper'

class TentaclesControllerTest < ActionController::TestCase
  setup do
    @tentacle = tentacles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tentacles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tentacle" do
    assert_difference('Tentacle.count') do
      post :create, :tentacle => @tentacle.attributes
    end

    assert_redirected_to tentacle_path(assigns(:tentacle))
  end

  test "should show tentacle" do
    get :show, :id => @tentacle.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tentacle.to_param
    assert_response :success
  end

  test "should update tentacle" do
    put :update, :id => @tentacle.to_param, :tentacle => @tentacle.attributes
    assert_redirected_to tentacle_path(assigns(:tentacle))
  end

  test "should destroy tentacle" do
    assert_difference('Tentacle.count', -1) do
      delete :destroy, :id => @tentacle.to_param
    end

    assert_redirected_to tentacles_path
  end
end
