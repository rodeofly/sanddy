require 'test_helper'

class EchantillonsControllerTest < ActionController::TestCase
  setup do
    @echantillon = echantillons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:echantillons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create echantillon" do
    assert_difference('Echantillon.count') do
      post :create, echantillon: { categorie_id: @echantillon.categorie_id, title: @echantillon.title, urne_id: @echantillon.urne_id }
    end

    assert_redirected_to echantillon_path(assigns(:echantillon))
  end

  test "should show echantillon" do
    get :show, id: @echantillon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @echantillon
    assert_response :success
  end

  test "should update echantillon" do
    patch :update, id: @echantillon, echantillon: { categorie_id: @echantillon.categorie_id, title: @echantillon.title, urne_id: @echantillon.urne_id }
    assert_redirected_to echantillon_path(assigns(:echantillon))
  end

  test "should destroy echantillon" do
    assert_difference('Echantillon.count', -1) do
      delete :destroy, id: @echantillon
    end

    assert_redirected_to echantillons_path
  end
end
