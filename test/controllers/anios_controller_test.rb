require 'test_helper'

class AniosControllerTest < ActionController::TestCase
  setup do
    @anio = anios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anio" do
    assert_difference('Anio.count') do
      post :create, anio: { precio: @anio.precio }
    end

    assert_redirected_to anio_path(assigns(:anio))
  end

  test "should show anio" do
    get :show, id: @anio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anio
    assert_response :success
  end

  test "should update anio" do
    patch :update, id: @anio, anio: { precio: @anio.precio }
    assert_redirected_to anio_path(assigns(:anio))
  end

  test "should destroy anio" do
    assert_difference('Anio.count', -1) do
      delete :destroy, id: @anio
    end

    assert_redirected_to anios_path
  end
end
