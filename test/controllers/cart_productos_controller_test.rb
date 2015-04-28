require 'test_helper'

class CartProductosControllerTest < ActionController::TestCase
  setup do
    @cart_producto = cart_productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cart_productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart_producto" do
    assert_difference('CartProducto.count') do
      post :create, juego_id: juegos(:ruby).id
    end

    assert_redirected_to cart_path(assigns(:cart_producto).cart)
  end

  test "should show cart_producto" do
    get :show, id: @cart_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cart_producto
    assert_response :success
  end

  test "should update cart_producto" do
    patch :update, id: @cart_producto, cart_producto: { cart_id: @cart_producto.cart_id}
    assert_redirected_to cart_producto_path(assigns(:cart_producto))
  end

  test "should destroy cart_producto" do
    assert_difference('CartProducto.count', -1) do
      delete :destroy, id: @cart_producto
    end

    assert_redirected_to cart_productos_path
  end
end
