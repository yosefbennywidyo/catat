class DaftarPustakaController < ApplicationController
  before_action :set_daftar_pustaka, only: [:show, :edit, :update, :destroy]

  # GET /daftar_pustaka
  # GET /daftar_pustaka.json
  def index
    @daftar_pustaka = DaftarPustaka.all
  end

  # GET /daftar_pustaka/1
  # GET /daftar_pustaka/1.json
  def show
  end

  # GET /daftar_pustaka/new
  def new
    @daftar_pustaka = DaftarPustaka.new
  end

  # GET /daftar_pustaka/1/edit
  def edit
  end

  # POST /daftar_pustaka
  # POST /daftar_pustaka.json
  def create
    @daftar_pustaka = DaftarPustaka.new(daftar_pustaka_params)

    respond_to do |format|
      if @daftar_pustaka.save
        format.html { redirect_to @daftar_pustaka, notice: 'Daftar pustaka was successfully created.' }
        format.json { render :show, status: :created, location: @daftar_pustaka }
      else
        format.html { render :new }
        format.json { render json: @daftar_pustaka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daftar_pustaka/1
  # PATCH/PUT /daftar_pustaka/1.json
  def update
    respond_to do |format|
      if @daftar_pustaka.update(daftar_pustaka_params)
        format.html { redirect_to @daftar_pustaka, notice: 'Daftar pustaka was successfully updated.' }
        format.json { render :show, status: :ok, location: @daftar_pustaka }
      else
        format.html { render :edit }
        format.json { render json: @daftar_pustaka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daftar_pustaka/1
  # DELETE /daftar_pustaka/1.json
  def destroy
    @daftar_pustaka.destroy
    respond_to do |format|
      format.html { redirect_to daftar_pustaka_index_url, notice: 'Daftar pustaka was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daftar_pustaka
      @daftar_pustaka = DaftarPustaka.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daftar_pustaka_params
      params.require(:daftar_pustaka).permit(:judul, :keterangan, :lampiran)
    end
end
