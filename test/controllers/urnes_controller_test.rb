require 'test_helper'

class UrnesControllerTest < ActionController::TestCase
  setup do
    @urne = urnes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:urnes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create urne" do
    assert_difference('Urne.count') do
      post :create, urne: { height: @urne.height, left: @urne.left, title: @urne.title, top: @urne.top, width: @urne.width }
    end

    assert_redirected_to urne_path(assigns(:urne))
  end

  test "should show urne" do
    get :show, id: @urne
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @urne
    assert_response :success
  end

  test "should update urne" do
    patch :update, id: @urne, urne: { height: @urne.height, left: @urne.left, title: @urne.title, top: @urne.top, width: @urne.width }
    assert_redirected_to urne_path(assigns(:urne))
  end

  test "should destroy urne" do
    assert_difference('Urne.count', -1) do
      delete :destroy, id: @urne
    end

    assert_redirected_to urnes_path
  end
end
