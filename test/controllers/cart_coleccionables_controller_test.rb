require 'test_helper'

class CartColeccionablesControllerTest < ActionController::TestCase
  setup do
    @cart_coleccionable = cart_coleccionables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cart_coleccionables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart_coleccionable" do
    assert_difference('CartColeccionable.count') do
      post :create, cart_coleccionable: { cantidad: @cart_coleccionable.cantidad, cart_id: @cart_coleccionable.cart_id, consola_id: @cart_coleccionable.consola_id, order_id: @cart_coleccionable.order_id }
    end

    assert_redirected_to cart_coleccionable_path(assigns(:cart_coleccionable))
  end

  test "should show cart_coleccionable" do
    get :show, id: @cart_coleccionable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cart_coleccionable
    assert_response :success
  end

  test "should update cart_coleccionable" do
    patch :update, id: @cart_coleccionable, cart_coleccionable: { cantidad: @cart_coleccionable.cantidad, cart_id: @cart_coleccionable.cart_id, consola_id: @cart_coleccionable.consola_id, order_id: @cart_coleccionable.order_id }
    assert_redirected_to cart_coleccionable_path(assigns(:cart_coleccionable))
  end

  test "should destroy cart_coleccionable" do
    assert_difference('CartColeccionable.count', -1) do
      delete :destroy, id: @cart_coleccionable
    end

    assert_redirected_to cart_coleccionables_path
  end
end
