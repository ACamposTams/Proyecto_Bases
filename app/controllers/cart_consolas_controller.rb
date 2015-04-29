class CartConsolasController < ApplicationController
  before_action :set_cart_consola, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cart_consolas = CartConsola.all
    respond_with(@cart_consolas)
  end

  def show
    respond_with(@cart_consola)
  end

  def new
    @cart_consola = CartConsola.new
    respond_with(@cart_consola)
  end

  def edit
  end

  def create
    @cart = current_cart
    consola = Consola.find(params[:consola_id])
    @cart_consola = @cart.add_consola(consola.id)

    respond_to do |format|
      if @cart_consola.save
        format.html { redirect_to @cart_consola.cart, notice: 'Se agrego el producto'}
        format.json {render json: @cart_consola,status: :created, location: @cart_consola}
      else
        format.html {render action: "new"}
        format.json {render json: @cart_consola.errors, status: :unprocessable_entity}
      end
    end
  end

  def update
    @cart_consola.update(cart_consola_params)
    respond_with(@cart_consola)
  end

  def destroy
    @cart_consola.destroy
    respond_with(@cart_consola)
  end

  private
    def set_cart_consola
      @cart_consola = CartConsola.find(params[:id])
    end

    def cart_consola_params
      params.require(:cart_consola).permit(:consola_id, :cart_id)
    end
end
