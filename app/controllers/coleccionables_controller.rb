class ColeccionablesController < ApplicationController
  before_action :set_coleccionable, only: [:show, :edit, :update, :destroy]

  # GET /coleccionables
  # GET /coleccionables.json
  def index
    @coleccionables = Coleccionable.all
  end

  # GET /coleccionables/1
  # GET /coleccionables/1.json
  def show
  end

  # GET /coleccionables/new
  def new
    @coleccionable = Coleccionable.new
  end

  # GET /coleccionables/1/edit
  def edit
  end

  # POST /coleccionables
  # POST /coleccionables.json
  def create
    @coleccionable = Coleccionable.new(coleccionable_params)

    respond_to do |format|
      if @coleccionable.save
        format.html { redirect_to @coleccionable, notice: 'Coleccionable was successfully created.' }
        format.json { render :show, status: :created, location: @coleccionable }
      else
        format.html { render :new }
        format.json { render json: @coleccionable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coleccionables/1
  # PATCH/PUT /coleccionables/1.json
  def update
    respond_to do |format|
      if @coleccionable.update(coleccionable_params)
        format.html { redirect_to @coleccionable, notice: 'Coleccionable was successfully updated.' }
        format.json { render :show, status: :ok, location: @coleccionable }
      else
        format.html { render :edit }
        format.json { render json: @coleccionable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coleccionables/1
  # DELETE /coleccionables/1.json
  def destroy
    @coleccionable.destroy
    respond_to do |format|
      format.html { redirect_to coleccionables_url, notice: 'Coleccionable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coleccionable
      @coleccionable = Coleccionable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coleccionable_params
      params.require(:coleccionable).permit(:nombre, :marca, :precio)
    end
end
