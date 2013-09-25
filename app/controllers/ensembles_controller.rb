class EnsemblesController < ApplicationController
  before_action :set_ensemble, only: [:show, :edit, :update, :destroy]

  # GET /ensembles
  # GET /ensembles.json
  def index
    @ensembles = Ensemble.all
  end

  # GET /ensembles/1
  # GET /ensembles/1.json
  def show
  end

  # GET /ensembles/new
  def new
    @ensemble = Ensemble.new
  end

  # GET /ensembles/1/edit
  def edit
  end

  # POST /ensembles
  # POST /ensembles.json
  def create
    @ensemble = Ensemble.new(ensemble_params)
    @ensemble.espaces << Espace.find(params[:espace_id].to_i)
    respond_to do |format|
      if @ensemble.save
        flash[:success] = 'Ensemble created.'
        format.js
        format.html { redirect_to @ensemble, notice: 'Ensemble was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ensemble }
      else
        format.js
        format.html { render action: 'new' }
        format.json { render json: @ensemble.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ensembles/1
  # PATCH/PUT /ensembles/1.json
  def update
    respond_to do |format|
      if @ensemble.update(ensemble_params)
        format.html { redirect_to @ensemble, notice: 'Ensemble was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ensemble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ensembles/1
  # DELETE /ensembles/1.json
  def destroy
    @ensemble.destroy
    respond_to do |format|
      format.html { redirect_to ensembles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ensemble
      @ensemble = Ensemble.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ensemble_params
      params.require(:ensemble).permit(:name, :width, :height, :top, :left, :espace_id)
    end
    
   
end
