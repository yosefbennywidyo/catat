class SuratMasukController < ApplicationController
  before_action :authorize
  before_action :set_surat_masuk, only: [:show, :edit, :update, :destroy]

  # GET /surat_masuk
  # GET /surat_masuk.json
  def index
    @surat_masuk = SuratMasuk.all
  end

  # GET /surat_masuk/1
  # GET /surat_masuk/1.json
  def show
  end

  # GET /surat_masuk/new
  def new
    @surat_masuk = SuratMasuk.new
  end

  # GET /surat_masuk/1/edit
  def edit
  end

  # POST /surat_masuk
  # POST /surat_masuk.json
  def create
    @surat_masuk = SuratMasuk.new(surat_masuk_params)

    respond_to do |format|
      if @surat_masuk.save
        format.html { redirect_to @surat_masuk, notice: 'Surat masuk was successfully created.' }
        format.json { render :show, status: :created, location: @surat_masuk }
      else
        format.html { render :new }
        format.json { render json: @surat_masuk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surat_masuk/1
  # PATCH/PUT /surat_masuk/1.json
  def update
    respond_to do |format|
      if @surat_masuk.update(surat_masuk_params)
        format.html { redirect_to @surat_masuk, notice: 'Surat masuk was successfully updated.' }
        format.json { render :show, status: :ok, location: @surat_masuk }
      else
        format.html { render :edit }
        format.json { render json: @surat_masuk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surat_masuk/1
  # DELETE /surat_masuk/1.json
  def destroy
    @surat_masuk.destroy
    respond_to do |format|
      format.html { redirect_to surat_masuk_index_url, notice: 'Surat masuk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surat_masuk
      @surat_masuk = SuratMasuk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surat_masuk_params
      params.require(:surat_masuk).permit(:nomor_surat, :tanggal_surat, :lampiran, :diterima_tgl, :no_agenda, :status, :sifat, :derajat, :pengaman, :dari, :perihal)
    end
end
