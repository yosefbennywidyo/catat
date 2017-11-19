class StatusAkunController < ApplicationController
  before_action :authorize
  before_action :set_status_akun, only: [:show, :edit, :update, :destroy]

  # GET /status_akun
  # GET /status_akun.json
  def index
    @status_akun = StatusAkun.all
  end

  # GET /status_akun/1
  # GET /status_akun/1.json
  def show
  end

  # GET /status_akun/new
  def new
    @status_akun = StatusAkun.new
  end

  # GET /status_akun/1/edit
  def edit
  end

  # POST /status_akun
  # POST /status_akun.json
  def create
    @status_akun = StatusAkun.new(status_akun_params)

    respond_to do |format|
      if @status_akun.save
        format.html { redirect_to @status_akun, notice: 'Status akun was successfully created.' }
        format.json { render :show, status: :created, location: @status_akun }
      else
        format.html { render :new }
        format.json { render json: @status_akun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_akun/1
  # PATCH/PUT /status_akun/1.json
  def update
    respond_to do |format|
      if @status_akun.update(status_akun_params)
        format.html { redirect_to @status_akun, notice: 'Status akun was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_akun }
      else
        format.html { render :edit }
        format.json { render json: @status_akun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_akun/1
  # DELETE /status_akun/1.json
  def destroy
    @status_akun.destroy
    respond_to do |format|
      format.html { redirect_to status_akun_index_url, notice: 'Status akun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_akun
      @status_akun = StatusAkun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_akun_params
      params.require(:status_akun).permit(:keterangan)
    end
end
