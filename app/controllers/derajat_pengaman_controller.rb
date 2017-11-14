class DerajatPengamanController < ApplicationController
  before_action :set_derajat_pengaman, only: [:show, :edit, :update, :destroy]

  # GET /derajat_pengaman
  # GET /derajat_pengaman.json
  def index
    @derajat_pengaman = DerajatPengaman.all
  end

  # GET /derajat_pengaman/1
  # GET /derajat_pengaman/1.json
  def show
  end

  # GET /derajat_pengaman/new
  def new
    @derajat_pengaman = DerajatPengaman.new
  end

  # GET /derajat_pengaman/1/edit
  def edit
  end

  # POST /derajat_pengaman
  # POST /derajat_pengaman.json
  def create
    @derajat_pengaman = DerajatPengaman.new(derajat_pengaman_params)

    respond_to do |format|
      if @derajat_pengaman.save
        format.html { redirect_to @derajat_pengaman, notice: 'Derajat pengaman was successfully created.' }
        format.json { render :show, status: :created, location: @derajat_pengaman }
      else
        format.html { render :new }
        format.json { render json: @derajat_pengaman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /derajat_pengaman/1
  # PATCH/PUT /derajat_pengaman/1.json
  def update
    respond_to do |format|
      if @derajat_pengaman.update(derajat_pengaman_params)
        format.html { redirect_to @derajat_pengaman, notice: 'Derajat pengaman was successfully updated.' }
        format.json { render :show, status: :ok, location: @derajat_pengaman }
      else
        format.html { render :edit }
        format.json { render json: @derajat_pengaman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /derajat_pengaman/1
  # DELETE /derajat_pengaman/1.json
  def destroy
    @derajat_pengaman.destroy
    respond_to do |format|
      format.html { redirect_to derajat_pengaman_index_url, notice: 'Derajat pengaman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_derajat_pengaman
      @derajat_pengaman = DerajatPengaman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def derajat_pengaman_params
      params.require(:derajat_pengaman).permit(:nama)
    end
end
