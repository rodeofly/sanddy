class EchantillonsController < ApplicationController
  before_action :set_echantillon, only: [:show, :edit, :update, :destroy]

  # GET /echantillons
  # GET /echantillons.json
  def index
    @echantillons = Echantillon.all
  end

  # GET /echantillons/1
  # GET /echantillons/1.json
  def show
  end

  # GET /echantillons/new
  def new
    @echantillon = Echantillon.new
  end

  # GET /echantillons/1/edit
  def edit
  end

  # POST /echantillons
  # POST /echantillons.json
  def create
    @echantillon = Echantillon.new(echantillon_params)

    respond_to do |format|
      if @echantillon.save
        format.html { redirect_to @echantillon, notice: 'Echantillon was successfully created.' }
        format.json { render action: 'show', status: :created, location: @echantillon }
      else
        format.html { render action: 'new' }
        format.json { render json: @echantillon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /echantillons/1
  # PATCH/PUT /echantillons/1.json
  def update
    respond_to do |format|
      if @echantillon.update(echantillon_params)
        format.html { redirect_to @echantillon, notice: 'Echantillon was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @echantillon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /echantillons/1
  # DELETE /echantillons/1.json
  def destroy
    @echantillon.destroy
    respond_to do |format|
      format.html { redirect_to echantillons_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_echantillon
      @echantillon = Echantillon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def echantillon_params
      params.require(:echantillon).permit(:title, :categorie_id, :urne_id)
    end
end
