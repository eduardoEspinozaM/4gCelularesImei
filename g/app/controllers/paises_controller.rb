class PaisesController < ApplicationController
  before_action :set_pais, only: [:show, :edit, :update, :destroy]

  # GET /paises
  # GET /paises.json
  def index
    @paises = Pais.all
  end

  # GET /paises/1
  # GET /paises/1.json
  def show
  end

  # GET /paises/new
  def new
    @pais = Pais.new
  end

  # GET /paises/1/edit
  def edit
  end

  # POST /paises
  # POST /paises.json
  def create
    @pais = Pais.new(pais_params)

    respond_to do |format|
      if @pais.save
        format.html { redirect_to @pais, notice: 'Pais was successfully created.' }
        format.json { render :show, status: :created, location: @pais }
      else
        format.html { render :new }
        format.json { render json: @pais.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paises/1
  # PATCH/PUT /paises/1.json
  def update
    respond_to do |format|
      if @pais.update(pais_params)
        format.html { redirect_to @pais, notice: 'Pais was successfully updated.' }
        format.json { render :show, status: :ok, location: @pais }
      else
        format.html { render :edit }
        format.json { render json: @pais.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paises/1
  # DELETE /paises/1.json
  def destroy
    @pais.destroy
    respond_to do |format|
      format.html { redirect_to paises_url, notice: 'Pais was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pais
      @pais = Pais.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pais_params
      params.require(:pais).permit(:nombre)
    end
end
