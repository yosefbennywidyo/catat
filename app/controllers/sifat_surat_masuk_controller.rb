class SifatSuratMasukController < ApplicationController
  before_action :set_sifat_surat_masuk, only: [:show, :edit, :update, :destroy]

  # GET /sifat_surat_masuk
  # GET /sifat_surat_masuk.json
  def index
    @sifat_surat_masuk = SifatSuratMasuk.all
  end

  # GET /sifat_surat_masuk/1
  # GET /sifat_surat_masuk/1.json
  def show
  end

  # GET /sifat_surat_masuk/new
  def new
    @sifat_surat_masuk = SifatSuratMasuk.new
  end

  # GET /sifat_surat_masuk/1/edit
  def edit
  end

  # POST /sifat_surat_masuk
  # POST /sifat_surat_masuk.json
  def create
    @sifat_surat_masuk = SifatSuratMasuk.new(sifat_surat_masuk_params)

    respond_to do |format|
      if @sifat_surat_masuk.save
        format.html { redirect_to @sifat_surat_masuk, notice: 'Sifat surat masuk was successfully created.' }
        format.json { render :show, status: :created, location: @sifat_surat_masuk }
      else
        format.html { render :new }
        format.json { render json: @sifat_surat_masuk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sifat_surat_masuk/1
  # PATCH/PUT /sifat_surat_masuk/1.json
  def update
    respond_to do |format|
      if @sifat_surat_masuk.update(sifat_surat_masuk_params)
        format.html { redirect_to @sifat_surat_masuk, notice: 'Sifat surat masuk was successfully updated.' }
        format.json { render :show, status: :ok, location: @sifat_surat_masuk }
      else
        format.html { render :edit }
        format.json { render json: @sifat_surat_masuk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sifat_surat_masuk/1
  # DELETE /sifat_surat_masuk/1.json
  def destroy
    @sifat_surat_masuk.destroy
    respond_to do |format|
      format.html { redirect_to sifat_surat_masuk_index_url, notice: 'Sifat surat masuk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sifat_surat_masuk
      @sifat_surat_masuk = SifatSuratMasuk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sifat_surat_masuk_params
      params.require(:sifat_surat_masuk).permit(:nama)
    end
end
