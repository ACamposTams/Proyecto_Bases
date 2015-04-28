class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @orders = Order.all
    respond_with(@orders)
  end

  def show
    respond_with(@order)
  end

  def new
    @cart = current_cart
    if @cart.cart_productos.empty?
      redirect_to store_url, notice: "Your cart is empty"
      return
    end

    @comprador = current_comprador
    if @comprador == :null 
      redirect_to juegos_path, notice: "No has iniciado sesión"
      return
    end

    @order = Order.new
    respond_to do |format|
      format.html
      format.json {render json: @order}
    end
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    @order.save
    respond_with(@order)
  end

  def update
    @order.update(order_params)
    respond_with(@order)
  end

  def destroy
    @order.destroy
    respond_with(@order)
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:nombre, :direccion, :email, :telefono)
    end
end
