class StatusSuratMasukController < ApplicationController
  before_action :set_status_surat_masuk, only: [:show, :edit, :update, :destroy]

  # GET /status_surat_masuk
  # GET /status_surat_masuk.json
  def index
    @status_surat_masuk = StatusSuratMasuk.all
  end

  # GET /status_surat_masuk/1
  # GET /status_surat_masuk/1.json
  def show
  end

  # GET /status_surat_masuk/new
  def new
    @status_surat_masuk = StatusSuratMasuk.new
  end

  # GET /status_surat_masuk/1/edit
  def edit
  end

  # POST /status_surat_masuk
  # POST /status_surat_masuk.json
  def create
    @status_surat_masuk = StatusSuratMasuk.new(status_surat_masuk_params)

    respond_to do |format|
      if @status_surat_masuk.save
        format.html { redirect_to @status_surat_masuk, notice: 'Status surat masuk was successfully created.' }
        format.json { render :show, status: :created, location: @status_surat_masuk }
      else
        format.html { render :new }
        format.json { render json: @status_surat_masuk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_surat_masuk/1
  # PATCH/PUT /status_surat_masuk/1.json
  def update
    respond_to do |format|
      if @status_surat_masuk.update(status_surat_masuk_params)
        format.html { redirect_to @status_surat_masuk, notice: 'Status surat masuk was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_surat_masuk }
      else
        format.html { render :edit }
        format.json { render json: @status_surat_masuk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_surat_masuk/1
  # DELETE /status_surat_masuk/1.json
  def destroy
    @status_surat_masuk.destroy
    respond_to do |format|
      format.html { redirect_to status_surat_masuk_index_url, notice: 'Status surat masuk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_surat_masuk
      @status_surat_masuk = StatusSuratMasuk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_surat_masuk_params
      params.require(:status_surat_masuk).permit(:nama)
    end
end
