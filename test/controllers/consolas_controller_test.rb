require 'test_helper'

class ConsolasControllerTest < ActionController::TestCase
  setup do
    @consola = consolas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consolas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consola" do
    assert_difference('Consola.count') do
      post :create, consola: { marca: @consola.marca, nombre: @consola.nombre, precio: @consola.precio }
    end

    assert_redirected_to consola_path(assigns(:consola))
  end

  test "should show consola" do
    get :show, id: @consola
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consola
    assert_response :success
  end

  test "should update consola" do
    patch :update, id: @consola, consola: { marca: @consola.marca, nombre: @consola.nombre, precio: @consola.precio }
    assert_redirected_to consola_path(assigns(:consola))
  end

  test "should destroy consola" do
    assert_difference('Consola.count', -1) do
      delete :destroy, id: @consola
    end

    assert_redirected_to consolas_path
  end
end
