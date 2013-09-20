require 'test_helper'

class TrisControllerTest < ActionController::TestCase
  setup do
    @tri = tris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tri" do
    assert_difference('Tri.count') do
      post :create, tri: { title: @tri.title, urne_id: @tri.urne_id }
    end

    assert_redirected_to tri_path(assigns(:tri))
  end

  test "should show tri" do
    get :show, id: @tri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tri
    assert_response :success
  end

  test "should update tri" do
    patch :update, id: @tri, tri: { title: @tri.title, urne_id: @tri.urne_id }
    assert_redirected_to tri_path(assigns(:tri))
  end

  test "should destroy tri" do
    assert_difference('Tri.count', -1) do
      delete :destroy, id: @tri
    end

    assert_redirected_to tris_path
  end
end
