require 'test_helper'

class BrewTypesControllerTest < ActionController::TestCase
  setup do
    @brew_type = brew_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brew_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brew_type" do
    assert_difference('BrewType.count') do
      post :create, brew_type: { description: @brew_type.description, name: @brew_type.name }
    end

    assert_redirected_to brew_type_path(assigns(:brew_type))
  end

  test "should show brew_type" do
    get :show, id: @brew_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brew_type
    assert_response :success
  end

  test "should update brew_type" do
    patch :update, id: @brew_type, brew_type: { description: @brew_type.description, name: @brew_type.name }
    assert_redirected_to brew_type_path(assigns(:brew_type))
  end

  test "should destroy brew_type" do
    assert_difference('BrewType.count', -1) do
      delete :destroy, id: @brew_type
    end

    assert_redirected_to brew_types_path
  end
end
