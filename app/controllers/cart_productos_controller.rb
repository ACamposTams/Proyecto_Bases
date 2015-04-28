class CartProductosController < ApplicationController
  before_action :set_cart_producto, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cart_productos = CartProducto.all
    respond_with(@cart_productos)
  end

  def show
    respond_with(@cart_producto)
  end

  def new
    @cart_producto = CartProducto.new
    respond_with(@cart_producto)
  end

  def edit
  end

  def create
    @cart = current_cart
    juego = Juego.find(params[:juego_id])
    @cart_producto = @cart.add_product(juego.id)

    respond_to do |format|
      if @cart_producto.save
        format.html { redirect_to @cart_producto.cart, notice: 'Se agrego el producto'}
        format.json {render json: @cart_producto,status: :created, location: @cart_producto}
      else
        format.html {render action: "new"}
        format.json {render json: @cart_producto.errors, status: :unprocessable_entity}
      end
    end
  end

  def update
    @cart_producto.update(cart_producto_params)
    respond_with(@cart_producto)
  end

  def destroy
    @cart_producto.destroy
    respond_with(@cart_producto)
  end

  private
    def set_cart_producto
      @cart_producto = CartProducto.find(params[:id])
    end

    def cart_producto_params
      params.require(:cart_producto).permit(:juego_id, :cart_id)
    end
end
