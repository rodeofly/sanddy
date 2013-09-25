class EspacesController < ApplicationController
  before_action :set_espace, only: [:show, :edit, :update, :destroy]

  # GET /espaces
  # GET /espaces.json
  def index
    @espaces = Espace.all
  end

  # GET /espaces/1
  # GET /espaces/1.json
  def show
    @ensemble = Ensemble.new
  end

  # GET /espaces/new
  def new
    @espace = Espace.new
  end

  # GET /espaces/1/edit
  def edit
  end

  # POST /espaces
  # POST /espaces.json
  def create
    @espace = Espace.new(espace_params)
    respond_to do |format|
      if @espace.save
        format.html { redirect_to @espace, notice: 'Espace was successfully created.' }
        format.json { render action: 'show', status: :created, location: @espace }
      else
        format.html { render action: 'new' }
        format.json { render json: @espace.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /espaces/1
  # PATCH/PUT /espaces/1.json
  def update
    respond_to do |format|
      if @espace.update(espace_params)
        format.html { redirect_to @espace, notice: 'Espace was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @espace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /espaces/1
  # DELETE /espaces/1.json
  def destroy
    @espace.destroy
    respond_to do |format|
      format.html { redirect_to espaces_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_espace
      @espace = Espace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def espace_params
      params.require(:espace).permit(:name, :width, :height, :top, :left)
    end
end
