require 'test_helper'

class TiendasJuegosControllerTest < ActionController::TestCase
  setup do
    @tiendas_juego = tiendas_juegos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tiendas_juegos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tiendas_juego" do
    assert_difference('TiendasJuego.count') do
      post :create, tiendas_juego: { cantidad: @tiendas_juego.cantidad }
    end

    assert_redirected_to tiendas_juego_path(assigns(:tiendas_juego))
  end

  test "should show tiendas_juego" do
    get :show, id: @tiendas_juego
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tiendas_juego
    assert_response :success
  end

  test "should update tiendas_juego" do
    patch :update, id: @tiendas_juego, tiendas_juego: { cantidad: @tiendas_juego.cantidad }
    assert_redirected_to tiendas_juego_path(assigns(:tiendas_juego))
  end

  test "should destroy tiendas_juego" do
    assert_difference('TiendasJuego.count', -1) do
      delete :destroy, id: @tiendas_juego
    end

    assert_redirected_to tiendas_juegos_path
  end
end
