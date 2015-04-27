require 'test_helper'

class ClientesJuegosControllerTest < ActionController::TestCase
  setup do
    @clientes_juego = clientes_juegos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes_juegos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clientes_juego" do
    assert_difference('ClientesJuego.count') do
      post :create, clientes_juego: { id_cliente: @clientes_juego.id_cliente, id_juego: @clientes_juego.id_juego, total: @clientes_juego.total }
    end

    assert_redirected_to clientes_juego_path(assigns(:clientes_juego))
  end

  test "should show clientes_juego" do
    get :show, id: @clientes_juego
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clientes_juego
    assert_response :success
  end

  test "should update clientes_juego" do
    patch :update, id: @clientes_juego, clientes_juego: { id_cliente: @clientes_juego.id_cliente, id_juego: @clientes_juego.id_juego, total: @clientes_juego.total }
    assert_redirected_to clientes_juego_path(assigns(:clientes_juego))
  end

  test "should destroy clientes_juego" do
    assert_difference('ClientesJuego.count', -1) do
      delete :destroy, id: @clientes_juego
    end

    assert_redirected_to clientes_juegos_path
  end
end
