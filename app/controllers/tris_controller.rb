class TrisController < ApplicationController
  before_action :set_tri, only: [:show, :edit, :update, :destroy]

  # GET /tris
  # GET /tris.json
  def index
    @tris = Tri.all
  end

  # GET /tris/1
  # GET /tris/1.json
  def show
  end

  # GET /tris/new
  def new
    @tri = Tri.new
  end

  # GET /tris/1/edit
  def edit
  end

  # POST /tris
  # POST /tris.json
  def create
    @tri = Tri.new(tri_params)

    respond_to do |format|
      if @tri.save
        format.html { redirect_to @tri, notice: 'Tri was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tri }
      else
        format.html { render action: 'new' }
        format.json { render json: @tri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tris/1
  # PATCH/PUT /tris/1.json
  def update
    respond_to do |format|
      if @tri.update(tri_params)
        format.html { redirect_to @tri, notice: 'Tri was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tris/1
  # DELETE /tris/1.json
  def destroy
    @tri.destroy
    respond_to do |format|
      format.html { redirect_to tris_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tri
      @tri = Tri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tri_params
      params.require(:tri).permit(:title, :urne_id)
    end
end
