class TiendasJuegosController < ApplicationController
  before_action :set_tiendas_juego, only: [:show, :edit, :update, :destroy]

  # GET /tiendas_juegos
  # GET /tiendas_juegos.json
  def index
    @tiendas_juegos = TiendasJuego.all
  end

  # GET /tiendas_juegos/1
  # GET /tiendas_juegos/1.json
  def show
  end

  # GET /tiendas_juegos/new
  def new
    @tiendas_juego = TiendasJuego.new
  end

  # GET /tiendas_juegos/1/edit
  def edit
  end

  # POST /tiendas_juegos
  # POST /tiendas_juegos.json
  def create
    @tiendas_juego = TiendasJuego.new(tiendas_juego_params)

    respond_to do |format|
      if @tiendas_juego.save
        format.html { redirect_to @tiendas_juego, notice: 'Tiendas juego was successfully created.' }
        format.json { render :show, status: :created, location: @tiendas_juego }
      else
        format.html { render :new }
        format.json { render json: @tiendas_juego.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiendas_juegos/1
  # PATCH/PUT /tiendas_juegos/1.json
  def update
    respond_to do |format|
      if @tiendas_juego.update(tiendas_juego_params)
        format.html { redirect_to @tiendas_juego, notice: 'Tiendas juego was successfully updated.' }
        format.json { render :show, status: :ok, location: @tiendas_juego }
      else
        format.html { render :edit }
        format.json { render json: @tiendas_juego.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiendas_juegos/1
  # DELETE /tiendas_juegos/1.json
  def destroy
    @tiendas_juego.destroy
    respond_to do |format|
      format.html { redirect_to tiendas_juegos_url, notice: 'Tiendas juego was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiendas_juego
      @tiendas_juego = TiendasJuego.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tiendas_juego_params
      params.require(:tiendas_juego).permit(:cantidad)
    end
end
