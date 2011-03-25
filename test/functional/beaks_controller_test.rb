require 'test_helper'

class BeaksControllerTest < ActionController::TestCase
  setup do
    @beak = beaks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beaks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beak" do
    assert_difference('Beak.count') do
      post :create, :beak => @beak.attributes
    end

    assert_redirected_to beak_path(assigns(:beak))
  end

  test "should show beak" do
    get :show, :id => @beak.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @beak.to_param
    assert_response :success
  end

  test "should update beak" do
    put :update, :id => @beak.to_param, :beak => @beak.attributes
    assert_redirected_to beak_path(assigns(:beak))
  end

  test "should destroy beak" do
    assert_difference('Beak.count', -1) do
      delete :destroy, :id => @beak.to_param
    end

    assert_redirected_to beaks_path
  end
end
