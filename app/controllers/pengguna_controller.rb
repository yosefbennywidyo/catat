class PenggunaController < ApplicationController
  before_action :set_pengguna, only: [:show, :edit, :update, :destroy]

  # GET /pengguna
  # GET /pengguna.json
  def index
    @pengguna = Pengguna.all
  end

  # GET /pengguna/1
  # GET /pengguna/1.json
  def show
  end

  # GET /pengguna/new
  def new
    @pengguna = Pengguna.new
  end

  # GET /pengguna/1/edit
  def edit
  end

  # POST /pengguna
  # POST /pengguna.json
  def create
    @pengguna = Pengguna.new(pengguna_params)

    respond_to do |format|
      if @pengguna.save
        session[:pengguna_id] = @pengguna.id
        redirect_to root_url, notice: "Terima kasih telah mendaftar di Catel! Lanjutkan dengan login"
        #format.html { redirect_to @pengguna, notice: 'Pengguna was successfully created.' }
        #format.json { render :show, status: :created, location: @pengguna }
      else
        format.html { render :new }
        format.json { render json: @pengguna.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pengguna/1
  # PATCH/PUT /pengguna/1.json
  def update
    respond_to do |format|
      if @pengguna.update(pengguna_params)
        format.html { redirect_to @pengguna, notice: 'Pengguna was successfully updated.' }
        format.json { render :show, status: :ok, location: @pengguna }
      else
        format.html { render :edit }
        format.json { render json: @pengguna.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pengguna/1
  # DELETE /pengguna/1.json
  def destroy
    @pengguna.destroy
    respond_to do |format|
      format.html { redirect_to pengguna_index_url, notice: 'Pengguna was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pengguna
      @pengguna = Pengguna.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pengguna_params
      params.require(:pengguna).permit(:nama, status_kepegawaian_ids:[], jabatan_ids:[], seksi_ids:[])
    end
end
