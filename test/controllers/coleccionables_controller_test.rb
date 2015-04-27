require 'test_helper'

class ColeccionablesControllerTest < ActionController::TestCase
  setup do
    @coleccionable = coleccionables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coleccionables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coleccionable" do
    assert_difference('Coleccionable.count') do
      post :create, coleccionable: { marca: @coleccionable.marca, nombre: @coleccionable.nombre, precio: @coleccionable.precio }
    end

    assert_redirected_to coleccionable_path(assigns(:coleccionable))
  end

  test "should show coleccionable" do
    get :show, id: @coleccionable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coleccionable
    assert_response :success
  end

  test "should update coleccionable" do
    patch :update, id: @coleccionable, coleccionable: { marca: @coleccionable.marca, nombre: @coleccionable.nombre, precio: @coleccionable.precio }
    assert_redirected_to coleccionable_path(assigns(:coleccionable))
  end

  test "should destroy coleccionable" do
    assert_difference('Coleccionable.count', -1) do
      delete :destroy, id: @coleccionable
    end

    assert_redirected_to coleccionables_path
  end
end
