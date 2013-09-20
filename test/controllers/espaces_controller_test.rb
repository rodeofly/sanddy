require 'test_helper'

class EspacesControllerTest < ActionController::TestCase
  setup do
    @espace = espaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:espaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create espace" do
    assert_difference('Espace.count') do
      post :create, espace: { height: @espace.height, left: @espace.left, name: @espace.name, top: @espace.top, width: @espace.width }
    end

    assert_redirected_to espace_path(assigns(:espace))
  end

  test "should show espace" do
    get :show, id: @espace
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @espace
    assert_response :success
  end

  test "should update espace" do
    patch :update, id: @espace, espace: { height: @espace.height, left: @espace.left, name: @espace.name, top: @espace.top, width: @espace.width }
    assert_redirected_to espace_path(assigns(:espace))
  end

  test "should destroy espace" do
    assert_difference('Espace.count', -1) do
      delete :destroy, id: @espace
    end

    assert_redirected_to espaces_path
  end
end
