require 'test_helper'

class TiendasColeccionablesControllerTest < ActionController::TestCase
  setup do
    @tiendas_coleccionable = tiendas_coleccionables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiendas_coleccionables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiendas_coleccionable" do
    assert_difference('TiendasColeccionable.count') do
      post :create, tiendas_coleccionable: { cantidad: @tiendas_coleccionable.cantidad }
    end

    assert_redirected_to tiendas_coleccionable_path(assigns(:tiendas_coleccionable))
  end

  test "should show tiendas_coleccionable" do
    get :show, id: @tiendas_coleccionable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiendas_coleccionable
    assert_response :success
  end

  test "should update tiendas_coleccionable" do
    patch :update, id: @tiendas_coleccionable, tiendas_coleccionable: { cantidad: @tiendas_coleccionable.cantidad }
    assert_redirected_to tiendas_coleccionable_path(assigns(:tiendas_coleccionable))
  end

  test "should destroy tiendas_coleccionable" do
    assert_difference('TiendasColeccionable.count', -1) do
      delete :destroy, id: @tiendas_coleccionable
    end

    assert_redirected_to tiendas_coleccionables_path
  end
end
