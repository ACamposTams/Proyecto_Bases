class TiendasColeccionablesController < ApplicationController
  before_action :set_tiendas_coleccionable, only: [:show, :edit, :update, :destroy]

  # GET /tiendas_coleccionables
  # GET /tiendas_coleccionables.json
  def index
    @tiendas_coleccionables = TiendasColeccionable.all
  end

  # GET /tiendas_coleccionables/1
  # GET /tiendas_coleccionables/1.json
  def show
  end

  # GET /tiendas_coleccionables/new
  def new
    @tiendas_coleccionable = TiendasColeccionable.new
  end

  # GET /tiendas_coleccionables/1/edit
  def edit
  end

  # POST /tiendas_coleccionables
  # POST /tiendas_coleccionables.json
  def create
    @tiendas_coleccionable = TiendasColeccionable.new(tiendas_coleccionable_params)

    respond_to do |format|
      if @tiendas_coleccionable.save
        format.html { redirect_to @tiendas_coleccionable, notice: 'Tiendas coleccionable was successfully created.' }
        format.json { render :show, status: :created, location: @tiendas_coleccionable }
      else
        format.html { render :new }
        format.json { render json: @tiendas_coleccionable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiendas_coleccionables/1
  # PATCH/PUT /tiendas_coleccionables/1.json
  def update
    respond_to do |format|
      if @tiendas_coleccionable.update(tiendas_coleccionable_params)
        format.html { redirect_to @tiendas_coleccionable, notice: 'Tiendas coleccionable was successfully updated.' }
        format.json { render :show, status: :ok, location: @tiendas_coleccionable }
      else
        format.html { render :edit }
        format.json { render json: @tiendas_coleccionable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiendas_coleccionables/1
  # DELETE /tiendas_coleccionables/1.json
  def destroy
    @tiendas_coleccionable.destroy
    respond_to do |format|
      format.html { redirect_to tiendas_coleccionables_url, notice: 'Tiendas coleccionable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiendas_coleccionable
      @tiendas_coleccionable = TiendasColeccionable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tiendas_coleccionable_params
      params.require(:tiendas_coleccionable).permit(:cantidad)
    end
end
