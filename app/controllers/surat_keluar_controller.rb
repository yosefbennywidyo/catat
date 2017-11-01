class SuratKeluarController < ApplicationController
  before_action :authorize
  before_action :set_surat_keluar, only: [:show, :edit, :update, :destroy]

  # GET /surat_keluar
  # GET /surat_keluar.json
  def index
    @surat_keluar = SuratKeluar.all
  end

  # GET /surat_keluar/1
  # GET /surat_keluar/1.json
  def show
  end

  # GET /surat_keluar/new
  def new
    @surat_keluar = SuratKeluar.new
  end

  # GET /surat_keluar/1/edit
  def edit
  end

  # POST /surat_keluar
  # POST /surat_keluar.json
  def create
    @surat_keluar = SuratKeluar.new(surat_keluar_params)

    respond_to do |format|
      if @surat_keluar.save
        format.html { redirect_to @surat_keluar, notice: 'Surat keluar was successfully created.' }
        format.json { render :show, status: :created, location: @surat_keluar }
      else
        format.html { render :new }
        format.json { render json: @surat_keluar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surat_keluar/1
  # PATCH/PUT /surat_keluar/1.json
  def update
    respond_to do |format|
      if @surat_keluar.update(surat_keluar_params)
        format.html { redirect_to @surat_keluar, notice: 'Surat keluar was successfully updated.' }
        format.json { render :show, status: :ok, location: @surat_keluar }
      else
        format.html { render :edit }
        format.json { render json: @surat_keluar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surat_keluar/1
  # DELETE /surat_keluar/1.json
  def destroy
    @surat_keluar.destroy
    respond_to do |format|
      format.html { redirect_to surat_keluar_index_url, notice: 'Surat keluar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surat_keluar
      @surat_keluar = SuratKeluar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surat_keluar_params
      params.require(:surat_keluar).permit(:judul, :keterangan, :status_surat)
    end
end
