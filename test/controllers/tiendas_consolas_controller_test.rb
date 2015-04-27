require 'test_helper'

class TiendasConsolasControllerTest < ActionController::TestCase
  setup do
    @tiendas_consola = tiendas_consolas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiendas_consolas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiendas_consola" do
    assert_difference('TiendasConsola.count') do
      post :create, tiendas_consola: { cantidad: @tiendas_consola.cantidad }
    end

    assert_redirected_to tiendas_consola_path(assigns(:tiendas_consola))
  end

  test "should show tiendas_consola" do
    get :show, id: @tiendas_consola
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiendas_consola
    assert_response :success
  end

  test "should update tiendas_consola" do
    patch :update, id: @tiendas_consola, tiendas_consola: { cantidad: @tiendas_consola.cantidad }
    assert_redirected_to tiendas_consola_path(assigns(:tiendas_consola))
  end

  test "should destroy tiendas_consola" do
    assert_difference('TiendasConsola.count', -1) do
      delete :destroy, id: @tiendas_consola
    end

    assert_redirected_to tiendas_consolas_path
  end
end
