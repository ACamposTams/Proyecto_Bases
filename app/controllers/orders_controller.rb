class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @orders = Order.all
    @cart = Cart.all
  end

  prawnto :prawn => { :top_margin => 75}

  def show
    @order = Order.find(params[:id])
  end

  def new
    @cart = current_cart
    if @cart.cart_productos.empty? && @cart.cart_consolas.empty? && @cart.cart_coleccionables.empty?
      redirect_to root_url, notice: "Your cart is empty"
      return
    end

    @comprador = current_comprador
    if @comprador == :null 
      redirect_to root_url, notice: "No has iniciado sesión"
      return
    end
  end

  @order = Order.new
    respond_to do |format|
      format.html
      format.json {render json: @order}
    end

  def edit
  end

  def create
    @order = Order.new(params[:order])
    @order.comprador_id = current_comprador.id
    @order.total = current_cart.total_price
    @order.add_cart_productos_from_cart(current_cart)
    @order.add_cart_consolas_from_cart(current_cart)
    @order.add_cart_coleccionables_from_cart(current_cart)

    respond_to do |format|
      if @order.save
        #Aqui insertamos para mandar la view a pdf
        session[:cart_id] = nil
        format.html {redirect_to root_url, notice: 'Gracias por su compra'}
        format.json {render json: @order, status: :created, location: @order}
      else
        @cart = current_cart
        format.html {render action: "new"}
        format.json {render json: @order_errors,status: :unprocessable_entity}
      end 
    end
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
      params.require(:order).permit()
    end
  end