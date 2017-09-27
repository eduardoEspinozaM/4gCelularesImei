class FormaPagosController < ApplicationController
  before_action :set_forma_pago, only: [:show, :edit, :update, :destroy]

  # GET /forma_pagos
  # GET /forma_pagos.json
  def index
    @forma_pagos = FormaPago.all
  end

  # GET /forma_pagos/1
  # GET /forma_pagos/1.json
  def show
  end

  # GET /forma_pagos/new
  def new
    @forma_pago = FormaPago.new
  end

  # GET /forma_pagos/1/edit
  def edit
  end

  # POST /forma_pagos
  # POST /forma_pagos.json
  def create
    @forma_pago = FormaPago.new(forma_pago_params)

    respond_to do |format|
      if @forma_pago.save
        format.html { redirect_to @forma_pago, notice: 'Forma pago was successfully created.' }
        format.json { render :show, status: :created, location: @forma_pago }
      else
        format.html { render :new }
        format.json { render json: @forma_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forma_pagos/1
  # PATCH/PUT /forma_pagos/1.json
  def update
    respond_to do |format|
      if @forma_pago.update(forma_pago_params)
        format.html { redirect_to @forma_pago, notice: 'Forma pago was successfully updated.' }
        format.json { render :show, status: :ok, location: @forma_pago }
      else
        format.html { render :edit }
        format.json { render json: @forma_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forma_pagos/1
  # DELETE /forma_pagos/1.json
  def destroy
    @forma_pago.destroy
    respond_to do |format|
      format.html { redirect_to forma_pagos_url, notice: 'Forma pago was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forma_pago
      @forma_pago = FormaPago.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forma_pago_params
      params.require(:forma_pago).permit(:nombre)
    end
end
