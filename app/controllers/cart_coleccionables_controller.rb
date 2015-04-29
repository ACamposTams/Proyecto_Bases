class CartColeccionablesController < ApplicationController
  before_action :set_cart_coleccionable, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cart_coleccionables = CartColeccionable.all
    respond_with(@cart_coleccionables)
  end

  def show
    respond_with(@cart_coleccionable)
  end

  def new
    @cart_coleccionable = CartColeccionable.new
    respond_with(@cart_coleccionable)
  end

  def edit
  end

  def create
    @cart = current_cart
    coleccionable = Coleccionable.find(params[:coleccionable_id])
    @cart_coleccionable = @cart.add_coleccionable(coleccionable.id)

    respond_to do |format|
      if @cart_coleccionable.save
        format.html { redirect_to @cart_coleccionable.cart, notice: 'Se agrego el producto'}
        format.json {render json: @cart_coleccionable,status: :created, location: @cart_coleccionable}
      else
        format.html {render action: "new"}
        format.json {render json: @cart_coleccionable.errors, status: :unprocessable_entity}
      end
    end
  end

  def update
    @cart_coleccionable.update(cart_coleccionable_params)
    respond_with(@cart_coleccionable)
  end

  def destroy
    @cart_coleccionable.destroy
    session[:cart_coleccionable_id] = nil
    respond_to do |format|
      format.html {redirect_to @cart_coleccionable.cart, notice: 'Se ha eliminado el elemento'}
      format.json {head :no_content}
    end
  end

  private
    def set_cart_coleccionable
      @cart_coleccionable = CartColeccionable.find(params[:id])
    end

    def cart_coleccionable_params
      params.require(:cart_coleccionable).permit(:consola_id, :cart_id, :cantidad, :order_id)
    end
end
