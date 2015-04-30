class ConsolasController < ApplicationController
  before_action :set_consola, only: [:show, :edit, :update, :destroy]

  # GET /consolas
  # GET /consolas.json
  def index
    @consolas = Consola.all
  end

  # GET /consolas/1
  # GET /consolas/1.json
  def show
  end

  # GET /consolas/new
  def new
    @consola = Consola.new
  end

  # GET /consolas/1/edit
  def edit
  end

  # POST /consolas
  # POST /consolas.json
  def create
    @consola = Consola.new(consola_params)

    respond_to do |format|
      if @consola.save
        format.html { redirect_to @consola, notice: 'Consola was successfully created.' }
        format.json { render :show, status: :created, location: @consola }
      else
        format.html { render :new }
        format.json { render json: @consola.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consolas/1
  # PATCH/PUT /consolas/1.json
  def update
    respond_to do |format|
      if @consola.update(consola_params)
        format.html { redirect_to @consola, notice: 'Consola was successfully updated.' }
        format.json { render :show, status: :ok, location: @consola }
      else
        format.html { render :edit }
        format.json { render json: @consola.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consolas/1
  # DELETE /consolas/1.json
  def destroy
    @consola.destroy
    respond_to do |format|
      format.html { redirect_to consolas_url, notice: 'Consola was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consola
      @consola = Consola.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        logger.error "Intento de accesar a un carro no válido"
        redirect_to root_url, notice: 'Consola no válida'
      rescue ActiveRecord::StatementInvalid
        logger.error "Intento de accesar a un carro no válido"
        redirect_to root_url, notice: 'Consola no válida'
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consola_params
      params.require(:consola).permit(:nombre, :marca, :precio)
    end
end
