require 'test_helper'

class KrakensControllerTest < ActionController::TestCase
  setup do
    @kraken = krakens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:krakens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kraken" do
    assert_difference('Kraken.count') do
      post :create, :kraken => @kraken.attributes
    end

    assert_redirected_to kraken_path(assigns(:kraken))
  end

  test "should show kraken" do
    get :show, :id => @kraken.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @kraken.to_param
    assert_response :success
  end

  test "should update kraken" do
    put :update, :id => @kraken.to_param, :kraken => @kraken.attributes
    assert_redirected_to kraken_path(assigns(:kraken))
  end

  test "should destroy kraken" do
    assert_difference('Kraken.count', -1) do
      delete :destroy, :id => @kraken.to_param
    end

    assert_redirected_to krakens_path
  end
end
