require 'test_helper'

class CartConsolasControllerTest < ActionController::TestCase
  setup do
    @cart_consola = cart_consolas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cart_consolas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart_consola" do
    assert_difference('CartConsola.count') do
      post :create, cart_consola: { : @cart_consola., cantidad: @cart_consola.cantidad, cart_id: @cart_consola.cart_id, consola_id: @cart_consola.consola_id }
    end

    assert_redirected_to cart_consola_path(assigns(:cart_consola))
  end

  test "should show cart_consola" do
    get :show, id: @cart_consola
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cart_consola
    assert_response :success
  end

  test "should update cart_consola" do
    patch :update, id: @cart_consola, cart_consola: { : @cart_consola., cantidad: @cart_consola.cantidad, cart_id: @cart_consola.cart_id, consola_id: @cart_consola.consola_id }
    assert_redirected_to cart_consola_path(assigns(:cart_consola))
  end

  test "should destroy cart_consola" do
    assert_difference('CartConsola.count', -1) do
      delete :destroy, id: @cart_consola
    end

    assert_redirected_to cart_consolas_path
  end
end
