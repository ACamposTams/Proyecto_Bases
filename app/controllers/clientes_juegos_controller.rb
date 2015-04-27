class ClientesJuegosController < ApplicationController
  before_action :set_clientes_juego, only: [:show, :edit, :update, :destroy]

  # GET /clientes_juegos
  # GET /clientes_juegos.json
  def index
    @clientes_juegos = ClientesJuego.all
  end

  # GET /clientes_juegos/1
  # GET /clientes_juegos/1.json
  def show
  end

  # GET /clientes_juegos/new
  def new
    @clientes_juego = ClientesJuego.new
  end

  # GET /clientes_juegos/1/edit
  def edit
  end

  # POST /clientes_juegos
  # POST /clientes_juegos.json
  def create
    @clientes_juego = ClientesJuego.new(clientes_juego_params)

    respond_to do |format|
      if @clientes_juego.save
        format.html { redirect_to @clientes_juego, notice: 'Clientes juego was successfully created.' }
        format.json { render :show, status: :created, location: @clientes_juego }
      else
        format.html { render :new }
        format.json { render json: @clientes_juego.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes_juegos/1
  # PATCH/PUT /clientes_juegos/1.json
  def update
    respond_to do |format|
      if @clientes_juego.update(clientes_juego_params)
        format.html { redirect_to @clientes_juego, notice: 'Clientes juego was successfully updated.' }
        format.json { render :show, status: :ok, location: @clientes_juego }
      else
        format.html { render :edit }
        format.json { render json: @clientes_juego.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes_juegos/1
  # DELETE /clientes_juegos/1.json
  def destroy
    @clientes_juego.destroy
    respond_to do |format|
      format.html { redirect_to clientes_juegos_url, notice: 'Clientes juego was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clientes_juego
      @clientes_juego = ClientesJuego.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clientes_juego_params
      params.require(:clientes_juego).permit(:id_juego, :id_cliente, :total)
    end
end
