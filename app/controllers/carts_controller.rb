class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cart = current_cart
    respond_to do |format|
      format.html {redirect_to current_cart}
    end
  end

  def show
  end

  def new
    @cart = Cart.new
    respond_with(@cart)
  end

  def edit
  end

  def create
    @cart = Cart.new(cart_params)
    @cart.save
    respond_with(@cart)
  end

  def update
    @cart.update(cart_params)
    respond_with(@cart)
  end

  def destroy
    @cart = current_cart
    @cart.destroy
    session[:cart_id] = nil
    respond_to do |format|
      format.html {redirect_to root_url, notice: 'El carrito se encuentra vacío'}
      format.json {head :no_content}
    end
  end

  private
    def set_cart
      @cart = Cart.find(params[:id])
      rescue ActiveRecord::RecordNotFound
  logger.error "Intento de accesar a un carro no válido"
  redirect_to root_url, notice: 'Invalid cart'
rescue ActiveRecord::StatementInvalid
  logger.error "Intento de accesar a un carro no válido"
  redirect_to root_url, notice: 'Invalid cart'

    end

    def cart_params
      params.require(:cart).permit(:comprador_id)
    end
end
