class TiendasConsolasController < ApplicationController
  before_action :set_tiendas_consola, only: [:show, :edit, :update, :destroy]

  # GET /tiendas_consolas
  # GET /tiendas_consolas.json
  def index
    @tiendas_consolas = TiendasConsola.all
  end

  # GET /tiendas_consolas/1
  # GET /tiendas_consolas/1.json
  def show
  end

  # GET /tiendas_consolas/new
  def new
    @tiendas_consola = TiendasConsola.new
  end

  # GET /tiendas_consolas/1/edit
  def edit
  end

  # POST /tiendas_consolas
  # POST /tiendas_consolas.json
  def create
    @tiendas_consola = TiendasConsola.new(tiendas_consola_params)

    respond_to do |format|
      if @tiendas_consola.save
        format.html { redirect_to @tiendas_consola, notice: 'Tiendas consola was successfully created.' }
        format.json { render :show, status: :created, location: @tiendas_consola }
      else
        format.html { render :new }
        format.json { render json: @tiendas_consola.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiendas_consolas/1
  # PATCH/PUT /tiendas_consolas/1.json
  def update
    respond_to do |format|
      if @tiendas_consola.update(tiendas_consola_params)
        format.html { redirect_to @tiendas_consola, notice: 'Tiendas consola was successfully updated.' }
        format.json { render :show, status: :ok, location: @tiendas_consola }
      else
        format.html { render :edit }
        format.json { render json: @tiendas_consola.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiendas_consolas/1
  # DELETE /tiendas_consolas/1.json
  def destroy
    @tiendas_consola.destroy
    respond_to do |format|
      format.html { redirect_to tiendas_consolas_url, notice: 'Tiendas consola was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiendas_consola
      @tiendas_consola = TiendasConsola.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tiendas_consola_params
      params.require(:tiendas_consola).permit(:cantidad)
    end
end
