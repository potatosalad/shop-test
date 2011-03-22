require 'test_helper'

class AttributeGroupsControllerTest < ActionController::TestCase
  setup do
    @attribute_group = attribute_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attribute_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attribute_group" do
    assert_difference('AttributeGroup.count') do
      post :create, :attribute_group => @attribute_group.attributes
    end

    assert_redirected_to attribute_group_path(assigns(:attribute_group))
  end

  test "should show attribute_group" do
    get :show, :id => @attribute_group.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @attribute_group.to_param
    assert_response :success
  end

  test "should update attribute_group" do
    put :update, :id => @attribute_group.to_param, :attribute_group => @attribute_group.attributes
    assert_redirected_to attribute_group_path(assigns(:attribute_group))
  end

  test "should destroy attribute_group" do
    assert_difference('AttributeGroup.count', -1) do
      delete :destroy, :id => @attribute_group.to_param
    end

    assert_redirected_to attribute_groups_path
  end
end
