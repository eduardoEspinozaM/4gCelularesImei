class ReportadosController < ApplicationController
  before_action :set_reportado, only: [:show, :edit, :update, :destroy]
layout 'admin'
  # GET /reportados
  # GET /reportados.json
  def index
    @reportados = Reportado.all
  end

  # GET /reportados/1
  # GET /reportados/1.json
  def show
  end

  # GET /reportados/new
  def new
    @reportado = Reportado.new
  end

  # GET /reportados/1/edit
  def edit
  end

  # POST /reportados
  # POST /reportados.json
  def create
    @reportado = Reportado.new(reportado_params)

    respond_to do |format|
      if @reportado.save
        format.html { redirect_to @reportado, notice: 'Reportado was successfully created.' }
        format.json { render :show, status: :created, location: @reportado }
      else
        format.html { render :new }
        format.json { render json: @reportado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reportados/1
  # PATCH/PUT /reportados/1.json
  def update
    respond_to do |format|
      if @reportado.update(reportado_params)
        format.html { redirect_to @reportado, notice: 'Reportado was successfully updated.' }
        format.json { render :show, status: :ok, location: @reportado }
      else
        format.html { render :edit }
        format.json { render json: @reportado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reportados/1
  # DELETE /reportados/1.json
  def destroy
    @reportado.destroy
    respond_to do |format|
      format.html { redirect_to reportados_url, notice: 'Reportado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reportado
      @reportado = Reportado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reportado_params
      params.require(:reportado).permit(:marca, :modelo, :imei, :tipo, :operador, :estadoR, :estadoP, :ciudad)
    end
end
