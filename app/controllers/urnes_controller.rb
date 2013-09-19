class UrnesController < ApplicationController
  before_action :set_urne, only: [:show, :edit, :update, :destroy]

  # GET /urnes
  # GET /urnes.json
  def index
    @urnes = Urne.all
  end

  # GET /urnes/1
  # GET /urnes/1.json
  def show
  end

  # GET /urnes/new
  def new
    @urne = Urne.new
  end

  # GET /urnes/1/edit
  def edit
  end

  # POST /urnes
  # POST /urnes.json
  def create
    @urne = Urne.new(urne_params)

    respond_to do |format|
      if @urne.save
        format.html { redirect_to @urne, notice: 'Urne was successfully created.' }
        format.json { render action: 'show', status: :created, location: @urne }
      else
        format.html { render action: 'new' }
        format.json { render json: @urne.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /urnes/1
  # PATCH/PUT /urnes/1.json
  def update
    respond_to do |format|
      if @urne.update(urne_params)
        format.html { redirect_to @urne, notice: 'Urne was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @urne.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /urnes/1
  # DELETE /urnes/1.json
  def destroy
    @urne.destroy
    respond_to do |format|
      format.html { redirect_to urnes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_urne
      @urne = Urne.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def urne_params
      params.require(:urne).permit(:title, :width, :height, :top, :left)
    end
end
