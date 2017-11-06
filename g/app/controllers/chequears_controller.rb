class ChequearsController < ApplicationController
  before_action :set_chequear, only: [:show, :edit, :update, :destroy]

  # GET /chequears
  # GET /chequears.json
  def index
    @chequears = Chequear.all
  end

  # GET /chequears/1
  # GET /chequears/1.json
  def show
  end

  # GET /chequears/new
  def new
    @chequear = Chequear.new
  end

  # GET /chequears/1/edit
  def edit
  end

  # POST /chequears
  # POST /chequears.json
  def create
    @chequear = Chequear.new(chequear_params)

    respond_to do |format|
      if @chequear.save
        format.html { redirect_to @chequear, notice: 'Chequear was successfully created.' }
        format.json { render :show, status: :created, location: @chequear }
      else
        format.html { render :new }
        format.json { render json: @chequear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chequears/1
  # PATCH/PUT /chequears/1.json
  def update
    respond_to do |format|
      if @chequear.update(chequear_params)
        format.html { redirect_to @chequear, notice: 'Chequear was successfully updated.' }
        format.json { render :show, status: :ok, location: @chequear }
      else
        format.html { render :edit }
        format.json { render json: @chequear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chequears/1
  # DELETE /chequears/1.json
  def destroy
    @chequear.destroy
    respond_to do |format|
      format.html { redirect_to chequears_url, notice: 'Chequear was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chequear
      @chequear = Chequear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chequear_params
      params.require(:chequear).permit(:imei)
    end
end
