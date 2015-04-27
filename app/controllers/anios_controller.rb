class AniosController < ApplicationController
  before_action :set_anio, only: [:show, :edit, :update, :destroy]

  # GET /anios
  # GET /anios.json
  def index
    @anios = Anio.all
  end

  # GET /anios/1
  # GET /anios/1.json
  def show
  end

  # GET /anios/new
  def new
    @anio = Anio.new
  end

  # GET /anios/1/edit
  def edit
  end

  # POST /anios
  # POST /anios.json
  def create
    @anio = Anio.new(anio_params)

    respond_to do |format|
      if @anio.save
        format.html { redirect_to @anio, notice: 'Anio was successfully created.' }
        format.json { render :show, status: :created, location: @anio }
      else
        format.html { render :new }
        format.json { render json: @anio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anios/1
  # PATCH/PUT /anios/1.json
  def update
    respond_to do |format|
      if @anio.update(anio_params)
        format.html { redirect_to @anio, notice: 'Anio was successfully updated.' }
        format.json { render :show, status: :ok, location: @anio }
      else
        format.html { render :edit }
        format.json { render json: @anio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anios/1
  # DELETE /anios/1.json
  def destroy
    @anio.destroy
    respond_to do |format|
      format.html { redirect_to anios_url, notice: 'Anio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anio
      @anio = Anio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anio_params
      params.require(:anio).permit(:precio)
    end
end
